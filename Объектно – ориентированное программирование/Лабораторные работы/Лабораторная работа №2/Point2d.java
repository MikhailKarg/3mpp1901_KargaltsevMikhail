public class Point2d{
  // X coordinate
  private double xCoord;
  // Y coordinate
  private double yCoord;

  // initialization
  public Point2d(double x, double y) {
    xCoord = x;
    yCoord = y;
  }

  // default constructor
  public Point2d() {
    this(0, 0);
  }

  // get X
  public double getX() {
    return xCoord;
  }

  // get Y
  public double getY() {
    return yCoord;
  }

  // set X
  public void setX(double val) {
    xCoord = val;
  }

  // set Y
  public void setY(double val) {
    yCoord = val;
  }

  // compare points
  public boolean compareTo(Point2d p) {
    if((p.getX() == this.getX()) & (p.getY() == this.getY()))
      return true;
    else
      return false;
  }
}
