// Generated by gencpp from file Kinefly/SrvFloat32ListResponse.msg
// DO NOT EDIT!


#ifndef KINEFLY_MESSAGE_SRVFLOAT32LISTRESPONSE_H
#define KINEFLY_MESSAGE_SRVFLOAT32LISTRESPONSE_H


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
struct SrvFloat32ListResponse_
{
  typedef SrvFloat32ListResponse_<ContainerAllocator> Type;

  SrvFloat32ListResponse_()
    : data()  {
    }
  SrvFloat32ListResponse_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _data_type;
  _data_type data;




  typedef boost::shared_ptr< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SrvFloat32ListResponse_

typedef ::Kinefly::SrvFloat32ListResponse_<std::allocator<void> > SrvFloat32ListResponse;

typedef boost::shared_ptr< ::Kinefly::SrvFloat32ListResponse > SrvFloat32ListResponsePtr;
typedef boost::shared_ptr< ::Kinefly::SrvFloat32ListResponse const> SrvFloat32ListResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "420cd38b6b071cd49f2970c3e2cee511";
  }

  static const char* value(const ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x420cd38b6b071cd4ULL;
  static const uint64_t static_value2 = 0x9f2970c3e2cee511ULL;
};

template<class ContainerAllocator>
struct DataType< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Kinefly/SrvFloat32ListResponse";
  }

  static const char* value(const ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] data\n\
\n\
";
  }

  static const char* value(const ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SrvFloat32ListResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::Kinefly::SrvFloat32ListResponse_<ContainerAllocator>& v)
  {
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINEFLY_MESSAGE_SRVFLOAT32LISTRESPONSE_H