; Auto-generated. Do not edit!


(cl:in-package Kinefly-srv)


;//! \htmlinclude SrvTrackerdata-request.msg.html

(cl:defclass <SrvTrackerdata-request> (roslisp-msg-protocol:ros-message)
  ((query
    :reader query
    :initarg :query
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SrvTrackerdata-request (<SrvTrackerdata-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvTrackerdata-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvTrackerdata-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Kinefly-srv:<SrvTrackerdata-request> is deprecated: use Kinefly-srv:SrvTrackerdata-request instead.")))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <SrvTrackerdata-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:query-val is deprecated.  Use Kinefly-srv:query instead.")
  (query m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvTrackerdata-request>) ostream)
  "Serializes a message object of type '<SrvTrackerdata-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'query) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvTrackerdata-request>) istream)
  "Deserializes a message object of type '<SrvTrackerdata-request>"
    (cl:setf (cl:slot-value msg 'query) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvTrackerdata-request>)))
  "Returns string type for a service object of type '<SrvTrackerdata-request>"
  "Kinefly/SrvTrackerdataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvTrackerdata-request)))
  "Returns string type for a service object of type 'SrvTrackerdata-request"
  "Kinefly/SrvTrackerdataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvTrackerdata-request>)))
  "Returns md5sum for a message object of type '<SrvTrackerdata-request>"
  "5213ef3e7b03bcf8c710a40803ffe14a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvTrackerdata-request)))
  "Returns md5sum for a message object of type 'SrvTrackerdata-request"
  "5213ef3e7b03bcf8c710a40803ffe14a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvTrackerdata-request>)))
  "Returns full string definition for message of type '<SrvTrackerdata-request>"
  (cl:format cl:nil "bool query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvTrackerdata-request)))
  "Returns full string definition for message of type 'SrvTrackerdata-request"
  (cl:format cl:nil "bool query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvTrackerdata-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvTrackerdata-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvTrackerdata-request
    (cl:cons ':query (query msg))
))
;//! \htmlinclude SrvTrackerdata-response.msg.html

(cl:defclass <SrvTrackerdata-response> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:string
    :initform "")
   (title1
    :reader title1
    :initarg :title1
    :type cl:string
    :initform "")
   (title2
    :reader title2
    :initarg :title2
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
   (markersH
    :reader markersH
    :initarg :markersH
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (markersV
    :reader markersV
    :initarg :markersV
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SrvTrackerdata-response (<SrvTrackerdata-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvTrackerdata-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvTrackerdata-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Kinefly-srv:<SrvTrackerdata-response> is deprecated: use Kinefly-srv:SrvTrackerdata-response instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <SrvTrackerdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:color-val is deprecated.  Use Kinefly-srv:color instead.")
  (color m))

(cl:ensure-generic-function 'title1-val :lambda-list '(m))
(cl:defmethod title1-val ((m <SrvTrackerdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:title1-val is deprecated.  Use Kinefly-srv:title1 instead.")
  (title1 m))

(cl:ensure-generic-function 'title2-val :lambda-list '(m))
(cl:defmethod title2-val ((m <SrvTrackerdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:title2-val is deprecated.  Use Kinefly-srv:title2 instead.")
  (title2 m))

(cl:ensure-generic-function 'abscissa-val :lambda-list '(m))
(cl:defmethod abscissa-val ((m <SrvTrackerdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:abscissa-val is deprecated.  Use Kinefly-srv:abscissa instead.")
  (abscissa m))

(cl:ensure-generic-function 'intensities-val :lambda-list '(m))
(cl:defmethod intensities-val ((m <SrvTrackerdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:intensities-val is deprecated.  Use Kinefly-srv:intensities instead.")
  (intensities m))

(cl:ensure-generic-function 'diffs-val :lambda-list '(m))
(cl:defmethod diffs-val ((m <SrvTrackerdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:diffs-val is deprecated.  Use Kinefly-srv:diffs instead.")
  (diffs m))

(cl:ensure-generic-function 'markersH-val :lambda-list '(m))
(cl:defmethod markersH-val ((m <SrvTrackerdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:markersH-val is deprecated.  Use Kinefly-srv:markersH instead.")
  (markersH m))

(cl:ensure-generic-function 'markersV-val :lambda-list '(m))
(cl:defmethod markersV-val ((m <SrvTrackerdata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Kinefly-srv:markersV-val is deprecated.  Use Kinefly-srv:markersV instead.")
  (markersV m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvTrackerdata-response>) ostream)
  "Serializes a message object of type '<SrvTrackerdata-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title2))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markersH))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'markersH))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markersV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'markersV))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvTrackerdata-response>) istream)
  "Deserializes a message object of type '<SrvTrackerdata-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'title1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'title1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'title2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'title2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'markersH) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markersH)))
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
  (cl:setf (cl:slot-value msg 'markersV) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markersV)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvTrackerdata-response>)))
  "Returns string type for a service object of type '<SrvTrackerdata-response>"
  "Kinefly/SrvTrackerdataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvTrackerdata-response)))
  "Returns string type for a service object of type 'SrvTrackerdata-response"
  "Kinefly/SrvTrackerdataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvTrackerdata-response>)))
  "Returns md5sum for a message object of type '<SrvTrackerdata-response>"
  "5213ef3e7b03bcf8c710a40803ffe14a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvTrackerdata-response)))
  "Returns md5sum for a message object of type 'SrvTrackerdata-response"
  "5213ef3e7b03bcf8c710a40803ffe14a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvTrackerdata-response>)))
  "Returns full string definition for message of type '<SrvTrackerdata-response>"
  (cl:format cl:nil "string color~%string title1~%string title2~%float32[] abscissa~%float32[] intensities~%float32[] diffs~%float32[] markersH~%float32[] markersV~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvTrackerdata-response)))
  "Returns full string definition for message of type 'SrvTrackerdata-response"
  (cl:format cl:nil "string color~%string title1~%string title2~%float32[] abscissa~%float32[] intensities~%float32[] diffs~%float32[] markersH~%float32[] markersV~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvTrackerdata-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'color))
     4 (cl:length (cl:slot-value msg 'title1))
     4 (cl:length (cl:slot-value msg 'title2))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'abscissa) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intensities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'diffs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markersH) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markersV) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvTrackerdata-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvTrackerdata-response
    (cl:cons ':color (color msg))
    (cl:cons ':title1 (title1 msg))
    (cl:cons ':title2 (title2 msg))
    (cl:cons ':abscissa (abscissa msg))
    (cl:cons ':intensities (intensities msg))
    (cl:cons ':diffs (diffs msg))
    (cl:cons ':markersH (markersH msg))
    (cl:cons ':markersV (markersV msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SrvTrackerdata)))
  'SrvTrackerdata-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SrvTrackerdata)))
  'SrvTrackerdata-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvTrackerdata)))
  "Returns string type for a service object of type '<SrvTrackerdata>"
  "Kinefly/SrvTrackerdata")