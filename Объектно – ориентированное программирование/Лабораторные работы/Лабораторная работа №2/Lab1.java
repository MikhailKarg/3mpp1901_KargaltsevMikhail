import java.util.Scanner;

public class Lab1 {
  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);

    String[] Point1_Coordinates, Point2_Coordinates, Point3_Coordinates;
    double x, y, z, area;

    // point 1
    System.out.println("Please, enter x, y and z coordinates for point 1 separated by commas");
    Point1_Coordinates = in.nextLine().split(",");
    x = Double.parseDouble(Point1_Coordinates[0]);
    y = Double.parseDouble(Point1_Coordinates[1]);
    z = Double.parseDouble(Point1_Coordinates[2]);
    Point3d point_1 = new Point3d(x, y, z);

    // point 2
    System.out.println("Please, enter x, y and z coordinates for point 2 separated by commas");
    Point2_Coordinates = in.nextLine().split(",");
    x = Double.parseDouble(Point2_Coordinates[0]);
    y = Double.parseDouble(Point2_Coordinates[1]);
    z = Double.parseDouble(Point2_Coordinates[2]);
    Point3d point_2 = new Point3d(x, y, z);

    // point 3
    System.out.println("Please, enter x, y and z coordinates for point 3 separated by commas");
    Point3_Coordinates = in.nextLine().split(",");
    x = Double.parseDouble(Point3_Coordinates[0]);
    y = Double.parseDouble(Point3_Coordinates[1]);
    z = Double.parseDouble(Point3_Coordinates[2]);
    Point3d point_3 = new Point3d(x, y, z);

    in.close();

    if(point_1.compareTo(point_2) || point_1.compareTo(point_3) || point_2.compareTo(point_3)) {
      System.out.println("The values of the points are equal, the calculation of the area is impossible!");
    } else {
    // get area
    area = computeArea(point_1, point_2, point_3);
    System.out.println("Area of a triangle is equal to " + area);
    }
  }

  // calculation area
  public static double computeArea(Point3d point_1, Point3d point_2, Point3d point_3) {
    // side of the triangle, half-perimeter and area
    double a, b, c, p, area;

    // get side
    a = point_1.distanceTo(point_2);
    b = point_1.distanceTo(point_3);
    c = point_2.distanceTo(point_3);

    //get half-perimeter
    p = (a + b + c) / 2;

    // get area
    area = Math.sqrt(p*(p - a)*(p - b)*(p - c));

    return Math.round(area * 100) / 100.0;
  }
}
