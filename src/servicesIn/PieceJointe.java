package servicesIn;

import org.springframework.web.multipart.MultipartFile;

public class PieceJointe {
	MultipartFile file64;

	@Override
	public String toString() {
		return "{success:"+  getFile64()+"}"  ;
	}

	public PieceJointe(MultipartFile file64) {
		super();
		this.file64 = file64;
	}

	public MultipartFile getFile64() {
		return file64;
	}

	public void setFile64(MultipartFile file64) {
		this.file64 = file64;
	}



}
