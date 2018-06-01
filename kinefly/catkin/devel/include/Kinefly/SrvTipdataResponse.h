// Generated by gencpp from file Kinefly/SrvTipdataResponse.msg
// DO NOT EDIT!


#ifndef KINEFLY_MESSAGE_SRVTIPDATARESPONSE_H
#define KINEFLY_MESSAGE_SRVTIPDATARESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace Kinefly
{
template <class ContainerAllocator>
struct SrvTipdataResponse_
{
  typedef SrvTipdataResponse_<ContainerAllocator> Type;

  SrvTipdataResponse_()
    : color()
    , abscissa()
    , intensities()
    , diffs()
    , detectionH(0.0)
    , detectionV(0.0)  {
    }
  SrvTipdataResponse_(const ContainerAllocator& _alloc)
    : color(_alloc)
    , abscissa(_alloc)
    , intensities(_alloc)
    , diffs(_alloc)
    , detectionH(0.0)
    , detectionV(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _color_type;
  _color_type color;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _abscissa_type;
  _abscissa_type abscissa;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _intensities_type;
  _intensities_type intensities;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _diffs_type;
  _diffs_type diffs;

   typedef float _detectionH_type;
  _detectionH_type detectionH;

   typedef float _detectionV_type;
  _detectionV_type detectionV;




  typedef boost::shared_ptr< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SrvTipdataResponse_

typedef ::Kinefly::SrvTipdataResponse_<std::allocator<void> > SrvTipdataResponse;

typedef boost::shared_ptr< ::Kinefly::SrvTipdataResponse > SrvTipdataResponsePtr;
typedef boost::shared_ptr< ::Kinefly::SrvTipdataResponse const> SrvTipdataResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::Kinefly::SrvTipdataResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace Kinefly

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'Kinefly': ['/home/nvidia/kinefly_catkin_ws/src/Kinefly/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2d2b63ee826bf33de8f2da73c313040a";
  }

  static const char* value(const ::Kinefly::SrvTipdataResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2d2b63ee826bf33dULL;
  static const uint64_t static_value2 = 0xe8f2da73c313040aULL;
};

template<class ContainerAllocator>
struct DataType< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Kinefly/SrvTipdataResponse";
  }

  static const char* value(const ::Kinefly::SrvTipdataResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string color\n\
float32[] abscissa\n\
float32[] intensities\n\
float32[] diffs\n\
float32 detectionH\n\
float32 detectionV\n\
\n\
";
  }

  static const char* value(const ::Kinefly::SrvTipdataResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.color);
      stream.next(m.abscissa);
      stream.next(m.intensities);
      stream.next(m.diffs);
      stream.next(m.detectionH);
      stream.next(m.detectionV);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SrvTipdataResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Kinefly::SrvTipdataResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::Kinefly::SrvTipdataResponse_<ContainerAllocator>& v)
  {
    s << indent << "color: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.color);
    s << indent << "abscissa[]" << std::endl;
    for (size_t i = 0; i < v.abscissa.size(); ++i)
    {
      s << indent << "  abscissa[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.abscissa[i]);
    }
    s << indent << "intensities[]" << std::endl;
    for (size_t i = 0; i < v.intensities.size(); ++i)
    {
      s << indent << "  intensities[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.intensities[i]);
    }
    s << indent << "diffs[]" << std::endl;
    for (size_t i = 0; i < v.diffs.size(); ++i)
    {
      s << indent << "  diffs[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.diffs[i]);
    }
    s << indent << "detectionH: ";
    Printer<float>::stream(s, indent + "  ", v.detectionH);
    s << indent << "detectionV: ";
    Printer<float>::stream(s, indent + "  ", v.detectionV);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINEFLY_MESSAGE_SRVTIPDATARESPONSE_H