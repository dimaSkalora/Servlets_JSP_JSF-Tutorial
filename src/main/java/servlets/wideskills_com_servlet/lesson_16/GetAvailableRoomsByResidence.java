package servlets.wideskills_com_servlet.lesson_16;

import java.util.ArrayList;
import java.util.List;
public class GetAvailableRoomsByResidence {
    public static List<Room> getAvailableRoomsByResidence(String residenceCode)
    {
        List<Room> availableRooms = new ArrayList<Room>();
        if(residenceCode.equals("Residence 1"))
        {
            Room room = new Room();
            room.setFloorNumber( "2" );
            room.setResidenceCode( residenceCode );
            room.setRoomNumber( "R001" );
            room.setRoomRent(200);
            availableRooms.add(room);
            room = new Room();
            room.setFloorNumber( "1" );
            room.setResidenceCode( residenceCode );
            room.setRoomNumber( "R002" );
            room.setRoomRent(230);
            availableRooms.add(room);
            room = new Room();
            room.setFloorNumber( "4" );
            room.setResidenceCode( residenceCode );
            room.setRoomNumber( "R003" );
            room.setRoomRent(400);
            availableRooms.add(room);
        }
        else if(residenceCode.equals("Residence 2"))
        {
            Room room = new Room();
            room.setFloorNumber( "1" );
            room.setResidenceCode( residenceCode );
            room.setRoomNumber( "R011" );
            room.setRoomRent(240);
            availableRooms.add(room);
            room = new Room();
            room.setFloorNumber( "11" );
            room.setResidenceCode( residenceCode );
            room.setRoomNumber( "R022" );
            room.setRoomRent(330);
            availableRooms.add(room);
            room = new Room();
            room.setFloorNumber( "4" );
            room.setResidenceCode( residenceCode );
            room.setRoomNumber( "R013" );
            room.setRoomRent(300);
            availableRooms.add(room);
        }
        else if(residenceCode.equals("Residence 3"))
        {
            Room room = new Room();
            room.setFloorNumber( "1" );
            room.setResidenceCode( residenceCode );
            room.setRoomNumber( "R111" );
            room.setRoomRent(440);
            availableRooms.add(room);
            room = new Room();
            room.setFloorNumber( "21" );
            room.setResidenceCode( residenceCode );
            room.setRoomNumber( "R222" );
            room.setRoomRent(340);
            availableRooms.add(room);
            room = new Room();
            room.setFloorNumber( "4" );
            room.setResidenceCode( residenceCode );
            room.setRoomNumber( "R213" );
            room.setRoomRent(300);
            availableRooms.add(room);
            room = new Room();
            room.setFloorNumber( "5" );
            room.setResidenceCode( residenceCode );
            room.setRoomNumber( "R513" );
            room.setRoomRent(360);
            availableRooms.add(room);
        }
        else if(residenceCode.equals("Residence 4"))
        {
            // No Rooms available
        }
        return availableRooms;
    }
}
