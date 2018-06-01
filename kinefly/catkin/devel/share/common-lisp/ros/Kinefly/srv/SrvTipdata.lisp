; Auto-generated. Do not edit!


(cl:in-package Kinefly-srv)


;//! \htmlinclude SrvTipdata-request.msg.html

(cl:defclass <SrvTipdata-request> (roslisp-msg-protocol:ros-message)
  ((query
    :reader query
    :initarg :query
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SrvTipdata-request (<SrvTipdata-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvTipdata-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvTipdata-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Kinefly-srv:<SrvTipdata-request> is deprecated: use Kinefly-srv:SrvTipdata-request instead.")))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <SrvTipdata-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:query-val is deprecated.  Use Kinefly-srv:query instead.")
  (query m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvTipdata-request>) ostream)
  "Serializes a message object of type '<SrvTipdata-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'query) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvTipdata-request>) istream)
  "Deserializes a message object of type '<SrvTipdata-request>"
    (cl:setf (cl:slot-value msg 'query) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvTipdata-request>)))
  "Returns string type for a service object of type '<SrvTipdata-request>"
  "Kinefly/SrvTipdataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvTipdata-request)))
  "Returns string type for a service object of type 'SrvTipdata-request"
  "Kinefly/SrvTipdataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvTipdata-request>)))
  "Returns md5sum for a message object of type '<SrvTipdata-request>"
  "dfbfbbdaf6b697dcfe44a2c6db1262ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvTipdata-request)))
  "Returns md5sum for a message object of type 'SrvTipdata-request"
  "dfbfbbdaf6b697dcfe44a2c6db1262ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvTipdata-request>)))
  "Returns full string definition for message of type '<SrvTipdata-request>"
  (cl:format cl:nil "bool query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvTipdata-request)))
  "Returns full string definition for message of type 'SrvTipdata-request"
  (cl:format cl:nil "bool query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvTipdata-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvTipdata-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvTipdata-request
    (cl:cons ':query (query msg))
))
;//! \htmlinclude SrvTipdata-response.msg.html

(cl:defclass <SrvTipdata-response> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:string
    :initform "")
   (abscissa
    :reader abscissa
    :initarg :abscissa
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (intensities
    :reader intensities
    :initarg :intensities
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (diffs
    :reader diffs
    :initarg :diffs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (detectionH
    :reader detectionH
    :initarg :detectionH
    :type cl:float
    :initform 0.0)
   (detectionV
    :reader detectionV
    :initarg :detectionV
    :type cl:float
    :initform 0.0))
)

(cl:defclass SrvTipdata-response (<SrvTipdata-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvTipdata-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvTipdata-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Kinefly-srv:<SrvTipdata-response> is deprecated: use Kinefly-srv:SrvTipdata-response instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <SrvTipdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:color-val is deprecated.  Use Kinefly-srv:color instead.")
  (color m))

(cl:ensure-generic-function 'abscissa-val :lambda-list '(m))
(cl:defmethod abscissa-val ((m <SrvTipdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:abscissa-val is deprecated.  Use Kinefly-srv:abscissa instead.")
  (abscissa m))

(cl:ensure-generic-function 'intensities-val :lambda-list '(m))
(cl:defmethod intensities-val ((m <SrvTipdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:intensities-val is deprecated.  Use Kinefly-srv:intensities instead.")
  (intensities m))

(cl:ensure-generic-function 'diffs-val :lambda-list '(m))
(cl:defmethod diffs-val ((m <SrvTipdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:diffs-val is deprecated.  Use Kinefly-srv:diffs instead.")
  (diffs m))

(cl:ensure-generic-function 'detectionH-val :lambda-list '(m))
(cl:defmethod detectionH-val ((m <SrvTipdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:detectionH-val is deprecated.  Use Kinefly-srv:detectionH instead.")
  (detectionH m))

(cl:ensure-generic-function 'detectionV-val :lambda-list '(m))
(cl:defmethod detectionV-val ((m <SrvTipdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:detectionV-val is deprecated.  Use Kinefly-srv:detectionV instead.")
  (detectionV m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvTipdata-response>) ostream)
  "Serializes a message object of type '<SrvTipdata-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'abscissa))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'abscissa))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intensities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'intensities))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'diffs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'diffs))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'detectionH))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'detectionV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvTipdata-response>) istream)
  "Deserializes a message object of type '<SrvTipdata-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'abscissa) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'abscissa)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intensities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intensities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'diffs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'diffs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'detectionH) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'detectionV) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvTipdata-response>)))
  "Returns string type for a service object of type '<SrvTipdata-response>"
  "Kinefly/SrvTipdataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvTipdata-response)))
  "Returns string type for a service object of type 'SrvTipdata-response"
  "Kinefly/SrvTipdataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvTipdata-response>)))
  "Returns md5sum for a message object of type '<SrvTipdata-response>"
  "dfbfbbdaf6b697dcfe44a2c6db1262ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvTipdata-response)))
  "Returns md5sum for a message object of type 'SrvTipdata-response"
  "dfbfbbdaf6b697dcfe44a2c6db1262ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvTipdata-response>)))
  "Returns full string definition for message of type '<SrvTipdata-response>"
  (cl:format cl:nil "string color~%float32[] abscissa~%float32[] intensities~%float32[] diffs~%float32 detectionH~%float32 detectionV~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvTipdata-response)))
  "Returns full string definition for message of type 'SrvTipdata-response"
  (cl:format cl:nil "string color~%float32[] abscissa~%float32[] intensities~%float32[] diffs~%float32 detectionH~%float32 detectionV~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvTipdata-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'color))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'abscissa) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intensities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'diffs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvTipdata-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvTipdata-response
    (cl:cons ':color (color msg))
    (cl:cons ':abscissa (abscissa msg))
    (cl:cons ':intensities (intensities msg))
    (cl:cons ':diffs (diffs msg))
    (cl:cons ':detectionH (detectionH msg))
    (cl:cons ':detectionV (detectionV msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SrvTipdata)))
  'SrvTipdata-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SrvTipdata)))
  'SrvTipdata-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvTipdata)))
  "Returns string type for a service object of type '<SrvTipdata>"
  "Kinefly/SrvTipdata")