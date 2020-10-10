public class Point3d{
  // X coordinate
  private double xCoord;
  // Y coordinate
  private double yCoord;
  // Z coordinate
  private double zCoord;

  // initialization
  public Point3d(double x, double y, double z) {
    xCoord = x;
    yCoord = y;
    zCoord = z;
  }

  // default constructor
  public Point3d() {
    this(0, 0, 0);
  }

  // get X
  public double getX() {
    return xCoord;
  }

  // get Y
  public double getY() {
    return yCoord;
  }

  // get Z
  public double getZ() {
    return zCoord;
  }

  // set X
  public void setX(double val) {
    xCoord = val;
  }

  // set Y
  public void setY(double val) {
    yCoord = val;
  }

  // set Z
  public void setZ(double val) {
    zCoord = val;
  }

  // Compare points, is fasle - points are not equal, true - equal
  public boolean compareTo(Point3d p) {
    if((p.getX() == this.getX()) & (p.getY() == this.getY()) & (p.getZ() == this.getZ()))
      return true;
    else
      return false;
  }

  // get distance between points
  public double distanceTo(Point3d p) {
    double distance = Math.sqrt(
                              Math.pow(p.getX() - this.getX(),2) +
                              Math.pow(p.getY() - this.getY(),2) +
                              Math.pow(p.getZ() - this.getZ(),2));
    return Math.round(distance * 100) / 100.0;
  }
}
