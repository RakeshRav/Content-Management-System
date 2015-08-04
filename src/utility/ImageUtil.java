package utility;

public class ImageUtil 
{
	public static String getNewImageName()
	{
		return "IMG_" + Math.random()*1000000 + "_" + Math.random()*100000 + ".jpg";
	}
}
