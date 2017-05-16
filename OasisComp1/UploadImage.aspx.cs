using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OasisComp1
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

       
        protected void btnUp_Click(object sender, EventArgs e)
        {

            //get extension of image
            string extension = (System.IO.Path.GetExtension(upimg.FileName).ToLower());

            //check if extension is valid
            if(extension == ".jpg" || extension == "jepg" || extension == ".png" ||extension == ".gif")
            {
                //load image
                System.Drawing.Image img = System.Drawing.Image.FromStream(upimg.PostedFile.InputStream);
                int width = img.Width;
                int height = img.Height;



                //save image
                db_1624957_co5027_asgEntities1 db = new db_1624957_co5027_asgEntities1();
                ImgTable1 imageData = new ImgTable1();
                imageData.ImgAltTxt = ImgAltTxt.Text;
                imageData.Width = width;
                imageData.Height = height;
                imageData.Extension = extension;
                db.ImgTable1.Add(imageData);
                db.SaveChanges();

                //create file
                string filename = imageData.ImgID.ToString() + extension;
                //save file
                img.Save(Server.MapPath("~/dbimage/" + filename));

                //error message
                errormsg.Text = "<p> File uploaded as" + filename + "in the server </p>";                
            }
            else
            {
                errormsg.Text = "<p> Picture not supported </p>";
            }
        }
    }
}