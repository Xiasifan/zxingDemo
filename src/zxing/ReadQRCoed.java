package zxing;

import com.google.zxing.*;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;

public class ReadQRCoed {
	public static void main(String[] args) throws IOException, NotFoundException {
		MultiFormatReader multiFormatReader = new MultiFormatReader();
		File file = new File("D:/code/img.png");
		BufferedImage image = ImageIO.read(file);
		BinaryBitmap binaryBitmap = new BinaryBitmap(new HybridBinarizer(new BufferedImageLuminanceSource(image)));
		HashMap hints = new HashMap();
		hints.put(EncodeHintType.CHARACTER_SET, "utf-8");
		Result result=multiFormatReader.decode(binaryBitmap,hints);
		System.out.println("解析结果是" + result.toString());
		System.out.println("二维码格式类型是" + result.getBarcodeFormat());
		System.out.println("二维码文本内容是" + result.getText());
	}
}
