using System.Linq;

namespace Team5BookStore.Models
{
    static class UserDetailModel
    {
        static BookStoreEntities context = BookStoreEntities.Instance;

        public static UserDetail GetUserByUserName(string userName)
            => context.UserDetails.First(u => u.UserName == userName);

        public static void AddNewUser(string username, string email, string name, string contact)
        {
            UserDetail newUser = new UserDetail
            {
                UserName = username,
                Email = email
            };
        }
    }
}