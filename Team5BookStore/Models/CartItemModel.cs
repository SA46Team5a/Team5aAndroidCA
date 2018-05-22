using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Team5BookStore.Models
{
    static class CartItemModel
    {
        private static BookStoreEntities context = BookStoreEntities.Instance;
           
        public static void AddToCart(string isbn, string userName, int quantity)
        {
            Book book = BookModel.GetBookByISBN(isbn);
            UserDetail user = UserDetailModel.GetUserByUserName(userName);
            Cart cart = CartModel.GetOpenCart(user);
            AddToCart(book, cart, quantity);
        }

        private static void AddToCart(Book book, Cart cart, int quantity)
        {
            CartItem newCartItem = new CartItem();
            newCartItem.Book = book;
            newCartItem.TimeAdded = DateTime.Now;
            newCartItem.Cart = cart;
            newCartItem.Quantity = quantity;

            context.CartItems.Add(newCartItem);
            context.SaveChanges();
        }

        public static void UpdateCartItemQuantity(int cartItemId, int newQuantity)
        {
            CartItem cartItem = GetCartItem(cartItemId);
            if (newQuantity > 0)
            {
                cartItem.Quantity = newQuantity;
                context.SaveChanges();
            }
            else
            {
                RemoveFromCart(cartItem);
            }
        }

        public static void RemoveFromCart(int cartItemId)
        {
            CartItem cartItem = GetCartItem(cartItemId);
            RemoveFromCart(cartItem);
        }

        private static void RemoveFromCart(CartItem cartItem)
        {
            context.CartItems.Remove(cartItem);
            context.SaveChanges();
        }

        private static CartItem GetCartItem(int cartItemId)
            => context.CartItems.First(ci => ci.CartItemID == cartItemId);

        public static List<CartItem> GetCartItems(string userName)
        {
            UserDetail user = context.UserDetails.First(u => u.UserName == userName);
            return GetCartItems(user);
        }

        private static List<CartItem> GetCartItems(UserDetail user)
        {
            Cart cart = CartModel.GetOpenCart(user);
            List<CartItem> cartItems = context.CartItems.Where(ci => ci.Cart == cart).ToList();
            BookModel.DiscountBooks(cartItems.Select(ci => ci.Book).ToList());
            return cartItems;
        }
    }

    public class CartModel
    {
        private static BookStoreEntities context = BookStoreEntities.Instance;

        public static Cart CreateCart(UserDetail user)
        {
            
            Cart newCart = new Cart
            {
                UserDetail = user,
                PaymentMode = null,
                CheckedOut = false
            };

            context.Carts.Add(newCart);
            context.SaveChanges();

            return newCart;
        }

        public static Cart GetOpenCart(UserDetail user)
        {
            List<Cart> openCart = context.Carts
                .Where(c => c.UserDetail == user && !c.CheckedOut)
                .ToList();

            if (openCart.Count == 0)
                return CreateCart(user);
            else
                return openCart.Last();
        }
 
    }
}