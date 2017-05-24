.class public Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;
.super Ljava/lang/Object;
.source "MiniCameraExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$GpsDifferential;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$GpsTrackRef;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$GpsSpeedRef;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$GpsMeasureMode;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$GpsStatus;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$GpsAltitudeRef;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$GpsLongitudeRef;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$GpsLatitudeRef;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$SubjectDistance;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$Sharpness;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$Saturation;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$Contrast;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$GainControl;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$SceneType;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$FileSource;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$SensingMethod;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$LightSource;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$ComponentsConfiguration;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$SceneCapture;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$WhiteBalance;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$ExposureMode;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$ColorSpace;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$Flash;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$MeteringMode;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$ExposureProgram;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$PlanarConfiguration;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$PhotometricInterpretation;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$ResolutionUnit;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$Compression;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$YCbCrPositioning;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface$Orientation;
    }
.end annotation


# static fields
.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 84
    const/16 v0, 0x100

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_IMAGE_WIDTH:I

    .line 86
    const/16 v0, 0x101

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_IMAGE_LENGTH:I

    .line 88
    const/16 v0, 0x102

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 90
    const/16 v0, 0x103

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_COMPRESSION:I

    .line 92
    const/16 v0, 0x106

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 94
    const/16 v0, 0x10e

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 96
    const/16 v0, 0x10f

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_MAKE:I

    .line 98
    const/16 v0, 0x110

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_MODEL:I

    .line 100
    const/16 v0, 0x111

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_OFFSETS:I

    .line 102
    const/16 v0, 0x112

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_ORIENTATION:I

    .line 104
    const/16 v0, 0x115

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 106
    const/16 v0, 0x116

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 108
    const/16 v0, 0x117

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 110
    const/16 v0, 0x11a

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_X_RESOLUTION:I

    .line 112
    const/16 v0, 0x11b

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_Y_RESOLUTION:I

    .line 114
    const/16 v0, 0x11c

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 116
    const/16 v0, 0x128

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 118
    const/16 v0, 0x12d

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 120
    const/16 v0, 0x131

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SOFTWARE:I

    .line 122
    const/16 v0, 0x132

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DATE_TIME:I

    .line 124
    const/16 v0, 0x13b

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_ARTIST:I

    .line 126
    const/16 v0, 0x13e

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_WHITE_POINT:I

    .line 128
    const/16 v0, 0x13f

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 130
    const/16 v0, 0x211

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 132
    const/16 v0, 0x212

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 134
    const/16 v0, 0x213

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 136
    const/16 v0, 0x214

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 138
    const/16 v0, -0x7d68

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_COPYRIGHT:I

    .line 140
    const/16 v0, -0x7897

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXIF_IFD:I

    .line 142
    const/16 v0, -0x77db

    invoke-static {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_IFD:I

    .line 145
    const/16 v0, 0x201

    invoke-static {v4, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 147
    const/16 v0, 0x202

    invoke-static {v4, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 150
    const/16 v0, -0x7d66

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXPOSURE_TIME:I

    .line 152
    const/16 v0, -0x7d63

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_F_NUMBER:I

    .line 154
    const/16 v0, -0x77de

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 156
    const/16 v0, -0x77dc

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 158
    const/16 v0, -0x77d9

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 160
    const/16 v0, -0x77d8

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_OECF:I

    .line 162
    const/16 v0, -0x7000

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXIF_VERSION:I

    .line 164
    const/16 v0, -0x6ffd

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 166
    const/16 v0, -0x6ffc

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 168
    const/16 v0, -0x6eff

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 170
    const/16 v0, -0x6efe

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 172
    const/16 v0, -0x6dff

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 174
    const/16 v0, -0x6dfe

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_APERTURE_VALUE:I

    .line 176
    const/16 v0, -0x6dfd

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 178
    const/16 v0, -0x6dfc

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 180
    const/16 v0, -0x6dfb

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 182
    const/16 v0, -0x6dfa

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 184
    const/16 v0, -0x6df9

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_METERING_MODE:I

    .line 186
    const/16 v0, -0x6df8

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_LIGHT_SOURCE:I

    .line 188
    const/16 v0, -0x6df7

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FLASH:I

    .line 190
    const/16 v0, -0x6df6

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FOCAL_LENGTH:I

    .line 192
    const/16 v0, -0x6dec

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUBJECT_AREA:I

    .line 194
    const/16 v0, -0x6d84

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_MAKER_NOTE:I

    .line 196
    const/16 v0, -0x6d7a

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_USER_COMMENT:I

    .line 198
    const/16 v0, -0x6d70

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUB_SEC_TIME:I

    .line 200
    const/16 v0, -0x6d6f

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 202
    const/16 v0, -0x6d6e

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 204
    const/16 v0, -0x6000

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 206
    const/16 v0, -0x5fff

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_COLOR_SPACE:I

    .line 208
    const/16 v0, -0x5ffe

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 210
    const/16 v0, -0x5ffd

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 212
    const/16 v0, -0x5ffc

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 214
    const/16 v0, -0x5ffb

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 216
    const/16 v0, -0x5df5

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FLASH_ENERGY:I

    .line 218
    const/16 v0, -0x5df4

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 220
    const/16 v0, -0x5df2

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 222
    const/16 v0, -0x5df1

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 224
    const/16 v0, -0x5df0

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 226
    const/16 v0, -0x5dec

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 228
    const/16 v0, -0x5deb

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 230
    const/16 v0, -0x5de9

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SENSING_METHOD:I

    .line 232
    const/16 v0, -0x5d00

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FILE_SOURCE:I

    .line 234
    const/16 v0, -0x5cff

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SCENE_TYPE:I

    .line 236
    const/16 v0, -0x5cfe

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_CFA_PATTERN:I

    .line 238
    const/16 v0, -0x5bff

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 240
    const/16 v0, -0x5bfe

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXPOSURE_MODE:I

    .line 242
    const/16 v0, -0x5bfd

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_WHITE_BALANCE:I

    .line 244
    const/16 v0, -0x5bfc

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 246
    const/16 v0, -0x5bfb

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 248
    const/16 v0, -0x5bfa

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 250
    const/16 v0, -0x5bf9

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GAIN_CONTROL:I

    .line 252
    const/16 v0, -0x5bf8

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_CONTRAST:I

    .line 254
    const/16 v0, -0x5bf7

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SATURATION:I

    .line 256
    const/16 v0, -0x5bf6

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SHARPNESS:I

    .line 258
    const/16 v0, -0x5bf5

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 260
    const/16 v0, -0x5bf4

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 262
    const/16 v0, -0x5be0

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 265
    invoke-static {v2, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_VERSION_ID:I

    .line 267
    invoke-static {v2, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 269
    invoke-static {v2, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LATITUDE:I

    .line 271
    invoke-static {v2, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 273
    invoke-static {v2, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LONGITUDE:I

    .line 275
    const/4 v0, 0x5

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 277
    const/4 v0, 0x6

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_ALTITUDE:I

    .line 279
    const/4 v0, 0x7

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 281
    const/16 v0, 0x8

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_SATTELLITES:I

    .line 283
    const/16 v0, 0x9

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_STATUS:I

    .line 285
    const/16 v0, 0xa

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 287
    const/16 v0, 0xb

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DOP:I

    .line 289
    const/16 v0, 0xc

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_SPEED_REF:I

    .line 291
    const/16 v0, 0xd

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_SPEED:I

    .line 293
    const/16 v0, 0xe

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_TRACK_REF:I

    .line 295
    const/16 v0, 0xf

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_TRACK:I

    .line 297
    const/16 v0, 0x10

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 299
    const/16 v0, 0x11

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 301
    const/16 v0, 0x12

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 303
    const/16 v0, 0x13

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 305
    const/16 v0, 0x14

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 307
    const/16 v0, 0x15

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    .line 309
    const/16 v0, 0x16

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    .line 311
    const/16 v0, 0x17

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 313
    const/16 v0, 0x18

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 315
    const/16 v0, 0x19

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 317
    const/16 v0, 0x1a

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 319
    const/16 v0, 0x1b

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 321
    const/16 v0, 0x1c

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 323
    const/16 v0, 0x1d

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 325
    const/16 v0, 0x1e

    invoke-static {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 328
    invoke-static {v5, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 334
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 336
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sBannedDefines:Ljava/util/HashSet;

    .line 348
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 854
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    sget-object v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    .line 2095
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 2097
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 2099
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 2201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 857
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 858
    return-void
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 2192
    if-eqz p0, :cond_0

    .line 2194
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2199
    :cond_0
    :goto_0
    return-void

    .line 2195
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static convertLatOrLongToDouble([Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;Ljava/lang/String;)D
    .locals 14
    .param p0, "coordinate"    # [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .param p1, "reference"    # Ljava/lang/String;

    .prologue
    .line 2055
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->toDouble()D

    move-result-wide v0

    .line 2056
    .local v0, "degrees":D
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->toDouble()D

    move-result-wide v4

    .line 2057
    .local v4, "minutes":D
    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->toDouble()D

    move-result-wide v8

    .line 2058
    .local v8, "seconds":D
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double v10, v4, v10

    add-double/2addr v10, v0

    const-wide v12, 0x40ac200000000000L    # 3600.0

    div-double v12, v8, v12

    add-double v6, v10, v12

    .line 2059
    .local v6, "result":D
    const-string v3, "S"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "W"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 2060
    :cond_0
    neg-double v6, v6

    .line 2062
    .end local v6    # "result":D
    :cond_1
    return-wide v6

    .line 2063
    .end local v0    # "degrees":D
    .end local v4    # "minutes":D
    .end local v8    # "seconds":D
    :catch_0
    move-exception v2

    .line 2064
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public static defineTag(IS)I
    .locals 2
    .param p0, "ifdId"    # I
    .param p1, "tagId"    # S

    .prologue
    .line 358
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 2183
    new-array v0, v4, [B

    .line 2184
    .local v0, "buf":[B
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2185
    .local v1, "ret":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2186
    invoke-virtual {p2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 2187
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 2189
    :cond_0
    return-void
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2356
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getAllowedIfdsFromInfo(I)[I
    .locals 10
    .param p0, "info"    # I

    .prologue
    .line 2360
    invoke-static {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v3

    .line 2361
    .local v3, "ifdFlags":I
    invoke-static {}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getIfds()[I

    move-result-object v4

    .line 2362
    .local v4, "ifds":[I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2363
    .local v7, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v9, 0x5

    if-ge v1, v9, :cond_1

    .line 2364
    shr-int v9, v3, v1

    and-int/lit8 v0, v9, 0x1

    .line 2365
    .local v0, "flag":I
    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    .line 2366
    aget v9, v4, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2363
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2369
    .end local v0    # "flag":I
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_3

    .line 2370
    const/4 v8, 0x0

    .line 2377
    :cond_2
    return-object v8

    .line 2372
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v8, v9, [I

    .line 2373
    .local v8, "ret":[I
    const/4 v5, 0x0

    .line 2374
    .local v5, "j":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2375
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .local v6, "j":I
    aput v1, v8, v5

    move v5, v6

    .line 2376
    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_1
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2413
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8
    .param p0, "allowedIfds"    # [I

    .prologue
    .line 2392
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_2

    .line 2393
    :cond_0
    const/4 v1, 0x0

    .line 2405
    :cond_1
    return v1

    .line 2395
    :cond_2
    const/4 v1, 0x0

    .line 2396
    .local v1, "flags":I
    invoke-static {}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getIfds()[I

    move-result-object v4

    .line 2397
    .local v4, "ifds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v2, v7, :cond_1

    .line 2398
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_3

    aget v5, v0, v3

    .line 2399
    .local v5, "j":I
    aget v7, v4, v2

    if-ne v7, v5, :cond_4

    .line 2400
    const/4 v7, 0x1

    shl-int/2addr v7, v2

    or-int/2addr v1, v7

    .line 2397
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2398
    .restart local v5    # "j":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 2005
    rem-int/lit16 p0, p0, 0x168

    .line 2006
    if-gez p0, :cond_0

    .line 2007
    add-int/lit16 p0, p0, 0x168

    .line 2009
    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    .line 2010
    const/4 v0, 0x1

    .line 2016
    :goto_0
    return v0

    .line 2011
    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    .line 2012
    const/4 v0, 0x6

    goto :goto_0

    .line 2013
    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    .line 2014
    const/4 v0, 0x3

    goto :goto_0

    .line 2016
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 1
    .param p0, "orientation"    # S

    .prologue
    const/4 v0, 0x0

    .line 2027
    packed-switch p0, :pswitch_data_0

    .line 2037
    :goto_0
    :pswitch_0
    return v0

    .line 2031
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 2033
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 2035
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 2027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getTrueIfd(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 373
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 366
    int-to-short v0, p0

    return v0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2409
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private initTagInfo()V
    .locals 13

    .prologue
    .line 2219
    const/4 v10, 0x2

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    .line 2220
    .local v5, "ifdAllowedIfds":[I
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v6, v10, 0x18

    .line 2221
    .local v6, "ifdFlags":I
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2222
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2223
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_IMAGE_LENGTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2224
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2225
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_COMPRESSION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2226
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2227
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_ORIENTATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2228
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2229
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2230
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2231
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2232
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2233
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_Y_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2234
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_RESOLUTION_UNIT:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2235
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_OFFSETS:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2236
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_ROWS_PER_STRIP:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2237
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2238
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit16 v12, v12, 0x300

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2239
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_WHITE_POINT:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2240
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2241
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2242
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2243
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DATE_TIME:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2244
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2245
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2246
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_MODEL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2247
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SOFTWARE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2248
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_ARTIST:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2249
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_COPYRIGHT:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2250
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXIF_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2251
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2253
    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v4, v10

    .line 2254
    .local v4, "ifd1AllowedIfds":[I
    invoke-static {v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v7, v10, 0x18

    .line 2255
    .local v7, "ifdFlags1":I
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2256
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2258
    const/4 v10, 0x1

    new-array v0, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v0, v10

    .line 2259
    .local v0, "exifAllowedIfds":[I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v1, v10, 0x18

    .line 2260
    .local v1, "exifFlags":I
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2261
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FLASHPIX_VERSION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2262
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_COLOR_SPACE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2263
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2264
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2265
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2266
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2267
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_MAKER_NOTE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2268
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_USER_COMMENT:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2269
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0xd

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2270
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2271
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2272
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUB_SEC_TIME:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2273
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2274
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2275
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x21

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2276
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXPOSURE_TIME:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2277
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_F_NUMBER:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2278
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2279
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2280
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2281
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_OECF:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2282
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2283
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_APERTURE_VALUE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2284
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2285
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2286
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2287
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2288
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_METERING_MODE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2289
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_LIGHT_SOURCE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2290
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FLASH:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FOCAL_LENGTH:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2292
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUBJECT_AREA:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2293
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FLASH_ENERGY:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2294
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2295
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2296
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2297
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2298
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUBJECT_LOCATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXPOSURE_INDEX:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2300
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SENSING_METHOD:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2301
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FILE_SOURCE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2302
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SCENE_TYPE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2303
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_CFA_PATTERN:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2304
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_CUSTOM_RENDERED:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2305
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXPOSURE_MODE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2306
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_WHITE_BALANCE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2307
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2308
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2309
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2310
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GAIN_CONTROL:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2311
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_CONTRAST:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2312
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SATURATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2313
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SHARPNESS:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2314
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2315
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2316
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2318
    const/4 v10, 0x1

    new-array v2, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v2, v10

    .line 2319
    .local v2, "gpsAllowedIfds":[I
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v3, v10, 0x18

    .line 2320
    .local v3, "gpsFlags":I
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2321
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2322
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LONGITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2323
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LATITUDE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2324
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LONGITUDE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2325
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2326
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_ALTITUDE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2327
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_TIME_STAMP:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2328
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_SATTELLITES:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2329
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_STATUS:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2330
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2331
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DOP:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2332
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_SPEED_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2333
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_SPEED:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2334
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_TRACK_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2335
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_TRACK:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2336
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2337
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2338
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_MAP_DATUM:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2339
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2340
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2341
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2342
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_BEARING:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2343
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2344
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2345
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2346
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2347
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DATE_STAMP:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2348
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2350
    const/4 v10, 0x1

    new-array v8, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v8, v10

    .line 2351
    .local v8, "interopAllowedIfds":[I
    invoke-static {v8}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v9, v10, 0x18

    .line 2352
    .local v9, "interopFlags":I
    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v9

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2353
    return-void

    .line 2219
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5
    .param p0, "info"    # I
    .param p1, "ifd"    # I

    .prologue
    const/4 v3, 0x1

    .line 2381
    invoke-static {}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getIfds()[I

    move-result-object v2

    .line 2382
    .local v2, "ifds":[I
    invoke-static {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    .line 2383
    .local v1, "ifdFlags":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 2384
    aget v4, v2, v0

    if-ne p1, v4, :cond_0

    shr-int v4, v1, v0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_0

    .line 2388
    :goto_1
    return v3

    .line 2383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2388
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected static isOffsetTag(S)Z
    .locals 2
    .param p0, "tag"    # S

    .prologue
    .line 1625
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toExifLatLong(D)[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .locals 10
    .param p0, "value"    # D

    .prologue
    const-wide/16 v8, 0x1

    .line 2173
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 2174
    double-to-int v0, p0

    .line 2175
    .local v0, "degrees":I
    int-to-double v4, v0

    sub-double v4, p0, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double p0, v4, v6

    .line 2176
    double-to-int v1, p0

    .line 2177
    .local v1, "minutes":I
    int-to-double v4, v1

    sub-double v4, p0, v4

    const-wide v6, 0x40b7700000000000L    # 6000.0

    mul-double p0, v4, v6

    .line 2178
    double-to-int v2, p0

    .line 2179
    .local v2, "seconds":I
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    const/4 v4, 0x0

    new-instance v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    int-to-long v6, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;-><init>(JJ)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    int-to-long v6, v1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;-><init>(JJ)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    int-to-long v6, v2

    const-wide/16 v8, 0x64

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;-><init>(JJ)V

    aput-object v5, v3, v4

    return-object v3
.end method


# virtual methods
.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 4
    .param p1, "tagId"    # I
    .param p2, "timestamp"    # J
    .param p4, "timezone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v1, 0x0

    .line 2112
    sget v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DATE_TIME:I

    if-eq p1, v2, :cond_0

    sget v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v2, :cond_0

    sget v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v2, :cond_1

    .line 2113
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2114
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    .line 2115
    .local v0, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v0, :cond_2

    .line 2122
    .end local v0    # "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_1
    :goto_0
    return v1

    .line 2118
    .restart local v0    # "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 2122
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addGpsDateTimeStampTag(J)Z
    .locals 13
    .param p1, "timestamp"    # J

    .prologue
    const/4 v2, 0x1

    const-wide/16 v10, 0x1

    const/4 v1, 0x0

    .line 2155
    sget v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    .line 2156
    .local v0, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v0, :cond_1

    .line 2168
    :cond_0
    :goto_0
    return v1

    .line 2159
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 2160
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2161
    sget v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    new-instance v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    iget-object v6, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;-><init>(JJ)V

    aput-object v5, v4, v1

    new-instance v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    iget-object v6, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;-><init>(JJ)V

    aput-object v5, v4, v2

    const/4 v5, 0x2

    new-instance v6, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    iget-object v7, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v8, v7

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;-><init>(JJ)V

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    .line 2164
    if-eqz v0, :cond_0

    .line 2167
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move v1, v2

    .line 2168
    goto :goto_0
.end method

.method public addGpsTags(DD)Z
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 2134
    sget v4, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->toExifLatLong(D)[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v1

    .line 2135
    .local v1, "latTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    sget v4, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->toExifLatLong(D)[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v3

    .line 2136
    .local v3, "longTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    sget v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LATITUDE_REF:I

    cmpl-double v4, p1, v6

    if-ltz v4, :cond_1

    const-string v4, "N"

    :goto_0
    invoke-virtual {p0, v5, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    .line 2137
    .local v0, "latRefTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    sget v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double v4, p3, v6

    if-ltz v4, :cond_2

    const-string v4, "E"

    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v2

    .line 2138
    .local v2, "longRefTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-nez v2, :cond_3

    .line 2139
    :cond_0
    const/4 v4, 0x0

    .line 2145
    :goto_2
    return v4

    .line 2136
    .end local v0    # "latRefTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v2    # "longRefTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_1
    const-string v4, "S"

    goto :goto_0

    .line 2137
    .restart local v0    # "latRefTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_2
    const-string v4, "W"

    goto :goto_1

    .line 2141
    .restart local v2    # "longRefTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 2142
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 2143
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 2144
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 2145
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 8
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1641
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1642
    .local v6, "info":I
    if-eqz v6, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move-object v0, v7

    .line 1655
    :cond_1
    :goto_0
    return-object v0

    .line 1645
    :cond_2
    invoke-static {v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1646
    .local v2, "type":S
    invoke-static {v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1647
    .local v3, "definedCount":I
    if-eqz v3, :cond_3

    const/4 v5, 0x1

    .line 1648
    .local v5, "hasDefinedCount":Z
    :goto_1
    invoke-static {v6, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->isIfdAllowed(II)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v7

    .line 1649
    goto :goto_0

    .line 1647
    .end local v5    # "hasDefinedCount":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1651
    .restart local v5    # "hasDefinedCount":Z
    :cond_4
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    invoke-static {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;-><init>(SSIIZ)V

    .line 1652
    .local v0, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v0, p3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v7

    .line 1653
    goto :goto_0
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 1666
    invoke-static {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1667
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildTag(IILjava/lang/Object;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v1

    return-object v1
.end method

.method protected buildUninitializedTag(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 7
    .param p1, "tagId"    # I

    .prologue
    .line 1671
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1672
    .local v6, "info":I
    if-nez v6, :cond_0

    .line 1673
    const/4 v0, 0x0

    .line 1680
    :goto_0
    return-object v0

    .line 1675
    :cond_0
    invoke-static {v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1676
    .local v2, "type":S
    invoke-static {v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1677
    .local v3, "definedCount":I
    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 1678
    .local v5, "hasDefinedCount":Z
    :goto_1
    invoke-static {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 1679
    .local v4, "ifdId":I
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    invoke-static {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;-><init>(SSIIZ)V

    .line 1680
    .local v0, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    goto :goto_0

    .line 1677
    .end local v0    # "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v4    # "ifdId":I
    .end local v5    # "hasDefinedCount":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public clearExif()V
    .locals 2

    .prologue
    .line 929
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    sget-object v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    .line 930
    return-void
.end method

.method public deleteTag(I)V
    .locals 1
    .param p1, "tagId"    # I

    .prologue
    .line 1759
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1760
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->deleteTag(II)V

    .line 1761
    return-void
.end method

.method public deleteTag(II)V
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-static {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->removeTag(SI)V

    .line 1751
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1273
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1274
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1237
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1239
    iget-object v6, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    .line 1240
    .local v6, "tempData":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;
    new-instance v7, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    sget-object v8, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v7, v8}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v7, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    .line 1241
    const/4 v4, 0x0

    .line 1242
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1244
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1246
    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-direct {p0, v5, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1247
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1248
    .local v3, "imageBytes":[B
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->readExif([B)V

    .line 1249
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->setTags(Ljava/util/Collection;)V

    .line 1250
    invoke-virtual {p0, v3, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->writeExif([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1255
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1257
    iput-object v6, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    .line 1260
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "imageBytes":[B
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "tempData":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;
    :cond_0
    return-void

    .line 1251
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "tempData":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;
    :catch_0
    move-exception v2

    .line 1252
    .local v2, "e":Ljava/io/IOException;
    :goto_0
    :try_start_3
    invoke-static {v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1253
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1255
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1257
    iput-object v6, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    throw v7

    .line 1255
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .line 1251
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public getActualTagCount(II)I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1575
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTag(II)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    .line 1576
    .local v0, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v0, :cond_0

    .line 1577
    const/4 v1, 0x0

    .line 1579
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v1

    goto :goto_0
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefinedTagCount(I)I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1558
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1559
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1560
    const/4 v1, 0x0

    .line 1562
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    goto :goto_0
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1590
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1591
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1592
    const/4 v1, -0x1

    .line 1594
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueIfd(I)I

    move-result v1

    goto :goto_0
.end method

.method public getDefinedTagType(I)S
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1605
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1606
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1607
    const/4 v1, -0x1

    .line 1609
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTypeFromInfo(I)S

    move-result v1

    goto :goto_0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .prologue
    .line 1103
    if-nez p1, :cond_0

    .line 1104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1106
    :cond_0
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)V

    .line 1107
    .local v0, "eos":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->setExifData(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;)V

    .line 1108
    return-object v0
.end method

.method public getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 5
    .param p1, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1126
    if-nez p1, :cond_0

    .line 1127
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1129
    :cond_0
    const/4 v1, 0x0

    .line 1131
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    return-object v3

    .line 1132
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 1133
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1134
    throw v0
.end method

.method public getLatLongAsDoubles()[D
    .locals 8

    .prologue
    const/4 v6, 0x3

    .line 2078
    sget v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagRationalValues(I)[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v1

    .line 2079
    .local v1, "latitude":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    sget v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    .line 2080
    .local v2, "latitudeRef":Ljava/lang/String;
    sget v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagRationalValues(I)[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v3

    .line 2081
    .local v3, "longitude":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    sget v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v4

    .line 2082
    .local v4, "longitudeRef":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    array-length v5, v1

    if-lt v5, v6, :cond_0

    array-length v5, v3

    if-ge v5, v6, :cond_1

    .line 2083
    :cond_0
    const/4 v0, 0x0

    .line 2088
    :goto_0
    return-object v0

    .line 2085
    :cond_1
    const/4 v5, 0x2

    new-array v0, v5, [D

    .line 2086
    .local v0, "latLon":[D
    const/4 v5, 0x0

    invoke-static {v1, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->convertLatOrLongToDouble([Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 2087
    const/4 v5, 0x1

    invoke-static {v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->convertLatOrLongToDouble([Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    goto :goto_0
.end method

.method public getTag(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1332
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1333
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTag(II)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v1

    return-object v1
.end method

.method public getTag(II)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1318
    invoke-static {p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1319
    const/4 v0, 0x0

    .line 1321
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-static {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getTag(SI)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagByteValue(I)Ljava/lang/Byte;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1436
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1437
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1425
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagByteValues(II)[B

    move-result-object v0

    .line 1426
    .local v0, "l":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1427
    :cond_0
    const/4 v1, 0x0

    .line 1429
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_0
.end method

.method public getTagByteValues(I)[B
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1512
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1513
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagByteValues(II)[B

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValues(II)[B
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1501
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTag(II)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    .line 1502
    .local v0, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v0, :cond_0

    .line 1503
    const/4 v1, 0x0

    .line 1505
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method protected getTagDefinition(SI)I
    .locals 2
    .param p1, "tagId"    # S
    .param p2, "defaultIfd"    # I

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method protected getTagDefinitionForTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)I
    .locals 4
    .param p1, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .prologue
    .line 1843
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataType()S

    move-result v2

    .line 1844
    .local v2, "type":S
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v0

    .line 1845
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getIfd()I

    move-result v1

    .line 1846
    .local v1, "ifd":I
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getTagId()S

    move-result v3

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagDefinitionForTag(SSII)I

    move-result v3

    return v3
.end method

.method protected getTagDefinitionForTag(SSII)I
    .locals 17
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "count"    # I
    .param p4, "ifd"    # I

    .prologue
    .line 1850
    invoke-virtual/range {p0 .. p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v6

    .line 1851
    .local v6, "defs":[I
    if-nez v6, :cond_1

    .line 1852
    const/4 v15, -0x1

    .line 1873
    :cond_0
    :goto_0
    return v15

    .line 1854
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v11

    .line 1855
    .local v11, "infos":Landroid/util/SparseIntArray;
    const/4 v15, -0x1

    .line 1856
    .local v15, "ret":I
    move-object v1, v6

    .local v1, "arr$":[I
    array-length v13, v1

    .local v13, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v1    # "arr$":[I
    .end local v8    # "i$":I
    .end local v13    # "len$":I
    .local v9, "i$":I
    :goto_1
    if-ge v9, v13, :cond_0

    aget v7, v1, v9

    .line 1857
    .local v7, "i":I
    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    .line 1858
    .local v10, "info":I
    invoke-static {v10}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTypeFromInfo(I)S

    move-result v5

    .line 1859
    .local v5, "def_type":S
    invoke-static {v10}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1860
    .local v3, "def_count":I
    invoke-static {v10}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v4

    .line 1861
    .local v4, "def_ifds":[I
    const/16 v16, 0x0

    .line 1862
    .local v16, "valid_ifd":Z
    move-object v2, v4

    .local v2, "arr$":[I
    array-length v14, v2

    .local v14, "len$":I
    const/4 v8, 0x0

    .end local v9    # "i$":I
    .restart local v8    # "i$":I
    :goto_2
    if-ge v8, v14, :cond_2

    aget v12, v2, v8

    .line 1863
    .local v12, "j":I
    move/from16 v0, p4

    if-ne v12, v0, :cond_4

    .line 1864
    const/16 v16, 0x1

    .line 1868
    .end local v12    # "j":I
    :cond_2
    if-eqz v16, :cond_5

    move/from16 v0, p2

    if-ne v0, v5, :cond_5

    move/from16 v0, p3

    if-eq v0, v3, :cond_3

    if-nez v3, :cond_5

    .line 1869
    :cond_3
    move v15, v7

    .line 1870
    goto :goto_0

    .line 1862
    .restart local v12    # "j":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1856
    .end local v12    # "j":I
    :cond_5
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_1
.end method

.method protected getTagDefinitionsForTagId(S)[I
    .locals 11
    .param p1, "tagId"    # S

    .prologue
    .line 1825
    invoke-static {}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getIfds()[I

    move-result-object v7

    .line 1826
    .local v7, "ifds":[I
    array-length v10, v7

    new-array v4, v10, [I

    .line 1827
    .local v4, "defs":[I
    const/4 v1, 0x0

    .line 1828
    .local v1, "counter":I
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v8

    .line 1829
    .local v8, "infos":Landroid/util/SparseIntArray;
    move-object v0, v7

    .local v0, "arr$":[I
    array-length v9, v0

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v2, v1

    .end local v1    # "counter":I
    .local v2, "counter":I
    :goto_0
    if-ge v6, v9, :cond_0

    aget v5, v0, v6

    .line 1830
    .local v5, "i":I
    invoke-static {v5, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v3

    .line 1831
    .local v3, "def":I
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-eqz v10, :cond_2

    .line 1832
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "counter":I
    .restart local v1    # "counter":I
    aput v3, v4, v2

    .line 1829
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    .end local v1    # "counter":I
    .restart local v2    # "counter":I
    goto :goto_0

    .line 1835
    .end local v3    # "def":I
    .end local v5    # "i":I
    :cond_0
    if-nez v2, :cond_1

    .line 1836
    const/4 v10, 0x0

    .line 1839
    :goto_2
    return-object v10

    :cond_1
    const/4 v10, 0x0

    invoke-static {v4, v10, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v10

    goto :goto_2

    .restart local v3    # "def":I
    .restart local v5    # "i":I
    :cond_2
    move v1, v2

    .end local v2    # "counter":I
    .restart local v1    # "counter":I
    goto :goto_1
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2205
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2206
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->initTagInfo()V

    .line 2208
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1417
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1418
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1406
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagIntValues(II)[I

    move-result-object v0

    .line 1407
    .local v0, "l":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1408
    :cond_0
    const/4 v1, 0x0

    .line 1410
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method public getTagIntValues(I)[I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1493
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1494
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagIntValues(II)[I

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValues(II)[I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1482
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTag(II)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    .line 1483
    .local v0, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v0, :cond_0

    .line 1484
    const/4 v1, 0x0

    .line 1486
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsInts()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1398
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1399
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValue(II)Ljava/lang/Long;
    .locals 4
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1387
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagLongValues(II)[J

    move-result-object v0

    .line 1388
    .local v0, "l":[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1389
    :cond_0
    const/4 v1, 0x0

    .line 1391
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Long;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0
.end method

.method public getTagLongValues(I)[J
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1474
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1475
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagLongValues(II)[J

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValues(II)[J
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1463
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTag(II)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    .line 1464
    .local v0, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v0, :cond_0

    .line 1465
    const/4 v1, 0x0

    .line 1467
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsLongs()[J

    move-result-object v1

    goto :goto_0
.end method

.method public getTagRationalValue(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1455
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1456
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagRationalValue(II)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValue(II)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1444
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagRationalValues(II)[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v0

    .line 1445
    .local v0, "l":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 1446
    :cond_0
    const/4 v1, 0x0

    .line 1448
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;-><init>(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)V

    goto :goto_0
.end method

.method public getTagRationalValues(I)[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1531
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1532
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagRationalValues(II)[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValues(II)[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1520
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTag(II)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    .line 1521
    .local v0, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v0, :cond_0

    .line 1522
    const/4 v1, 0x0

    .line 1524
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsRationals()[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1379
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1380
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1368
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTag(II)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    .line 1369
    .local v0, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v0, :cond_0

    .line 1370
    const/4 v1, 0x0

    .line 1372
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1355
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1356
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1342
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTag(II)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    .line 1343
    .local v0, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .locals 1
    .param p1, "ifdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .locals 1
    .param p1, "tagId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1898
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getCompressedThumbnail()[B

    move-result-object v0

    .line 1900
    .local v0, "thumb":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1904
    .end local v0    # "thumb":[B
    :goto_0
    return-object v1

    .line 1901
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->hasUncompressedStrip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1904
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getCompressedThumbnail()[B

    move-result-object v0

    .line 1920
    :goto_0
    return-object v0

    .line 1917
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1920
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public isTagCountDefined(I)Z
    .locals 3
    .param p1, "tagId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1542
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1544
    .local v0, "info":I
    if-nez v0, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getComponentCountFromInfo(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isThumbnailCompressed()Z
    .locals 1

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 879
    if-nez p1, :cond_0

    .line 880
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 882
    :cond_0
    const/4 v0, 0x0

    .line 884
    .local v0, "d":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;
    :try_start_0
    new-instance v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifReader;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifReader;-><init>(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)V

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifReader;->read(Ljava/io/InputStream;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;
    :try_end_0
    .catch Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 888
    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    .line 889
    return-void

    .line 885
    :catch_0
    move-exception v1

    .line 886
    .local v1, "e":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exif format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 5
    .param p1, "inFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 900
    if-nez p1, :cond_0

    .line 901
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 903
    :cond_0
    const/4 v1, 0x0

    .line 905
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 911
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 912
    return-void

    .line 907
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 909
    throw v0

    .line 907
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public readExif([B)V
    .locals 1
    .param p1, "jpeg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 869
    return-void
.end method

.method public removeCompressedThumbnail()V
    .locals 2

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->setCompressedThumbnail([B)V

    .line 1987
    return-void
.end method

.method public removeTagDefinition(I)V
    .locals 1
    .param p1, "tagId"    # I

    .prologue
    .line 1882
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1883
    return-void
.end method

.method public resetTagDefinitions()V
    .locals 1

    .prologue
    .line 1889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 1890
    return-void
.end method

.method public rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 19
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1154
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;>;"
    const/4 v10, 0x0

    .line 1155
    .local v10, "file":Ljava/io/RandomAccessFile;
    const/4 v14, 0x0

    .line 1158
    .local v14, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v18, "temp":Ljava/io/File;
    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    .end local v14    # "is":Ljava/io/InputStream;
    .local v15, "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 1164
    .local v16, "parser":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->parse(Ljava/io/InputStream;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    :try_end_1
    .catch Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v16

    .line 1168
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->getOffsetToExifEndFromSOF()I

    move-result v2

    int-to-long v6, v2

    .line 1171
    .local v6, "exifSize":J
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1172
    const/4 v14, 0x0

    .line 1175
    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    :try_start_3
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1176
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .local v11, "file":Ljava/io/RandomAccessFile;
    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    .line 1177
    .local v12, "fileLength":J
    cmp-long v2, v12, v6

    if-gez v2, :cond_0

    .line 1178
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Filesize changed during operation"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1187
    .end local v12    # "fileLength":J
    :catch_0
    move-exception v9

    move-object v10, v11

    .line 1188
    .end local v6    # "exifSize":J
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .end local v16    # "parser":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    .end local v18    # "temp":Ljava/io/File;
    .local v9, "e":Ljava/io/IOException;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :goto_0
    :try_start_5
    invoke-static {v10}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1189
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1191
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :goto_1
    invoke-static {v14}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 1165
    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "parser":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    .restart local v18    # "temp":Ljava/io/File;
    :catch_1
    move-exception v9

    .line 1166
    .local v9, "e":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid exif format : "

    invoke-direct {v2, v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1187
    .end local v9    # "e":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
    :catch_2
    move-exception v9

    move-object v14, v15

    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 1182
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v6    # "exifSize":J
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v12    # "fileLength":J
    :cond_0
    :try_start_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    .line 1186
    .local v8, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v17

    .line 1191
    .local v17, "ret":Z
    invoke-static {v14}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1193
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 1194
    return v17

    .line 1191
    .end local v6    # "exifSize":J
    .end local v8    # "buf":Ljava/nio/ByteBuffer;
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .end local v12    # "fileLength":J
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v17    # "ret":Z
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v15    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v14, v15

    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    goto :goto_1

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v6    # "exifSize":J
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v2

    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 1187
    .end local v6    # "exifSize":J
    .end local v16    # "parser":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    .end local v18    # "temp":Ljava/io/File;
    :catch_3
    move-exception v9

    goto :goto_0
.end method

.method public rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .locals 8
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1211
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;>;"
    const/4 v2, 0x0

    .line 1213
    .local v2, "mod":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;
    :try_start_0
    new-instance v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;

    invoke-direct {v3, p1, p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;-><init>(Ljava/nio/ByteBuffer;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)V
    :try_end_0
    .catch Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1214
    .end local v2    # "mod":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;
    .local v3, "mod":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;
    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 1215
    .local v4, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->modifyTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)V
    :try_end_1
    .catch Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1218
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 1219
    .end local v3    # "mod":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;
    .local v0, "e":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
    .restart local v2    # "mod":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;
    :goto_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid exif format : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1217
    .end local v0    # "e":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
    .end local v2    # "mod":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mod":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->commit()Z
    :try_end_2
    .catch Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    return v5

    .line 1218
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "mod":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;
    .restart local v2    # "mod":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1975
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1976
    .local v0, "thumbnail":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1977
    const/4 v1, 0x0

    .line 1979
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->setCompressedThumbnail([B)Z

    move-result v1

    goto :goto_0
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1
    .param p1, "thumb"    # [B

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->clearThumbnailAndStrips()V

    .line 1963
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->setCompressedThumbnail([B)V

    .line 1964
    const/4 v0, 0x1

    return v0
.end method

.method public setExif(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 921
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;>;"
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->clearExif()V

    .line 922
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->setTags(Ljava/util/Collection;)V

    .line 923
    return-void
.end method

.method public setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 1
    .param p1, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->mData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->addTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    return-object v0
.end method

.method public setTagDefinition(SISS[I)I
    .locals 17
    .param p1, "tagId"    # S
    .param p2, "defaultIfd"    # I
    .param p3, "tagType"    # S
    .param p4, "defaultComponentCount"    # S
    .param p5, "allowedIfds"    # [I

    .prologue
    .line 1779
    sget-object v14, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1780
    const/4 v12, -0x1

    .line 1817
    :goto_0
    return v12

    .line 1782
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->isValidType(S)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static/range {p2 .. p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->isValidIfd(I)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1783
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->defineTag(IS)I

    move-result v12

    .line 1784
    .local v12, "tagDef":I
    const/4 v14, -0x1

    if-ne v12, v14, :cond_1

    .line 1785
    const/4 v12, -0x1

    goto :goto_0

    .line 1787
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v11

    .line 1788
    .local v11, "otherDefs":[I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v9

    .line 1790
    .local v9, "infos":Landroid/util/SparseIntArray;
    const/4 v5, 0x0

    .line 1791
    .local v5, "defaultCheck":Z
    move-object/from16 v3, p5

    .local v3, "arr$":[I
    array-length v10, v3

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v10, :cond_4

    aget v6, v3, v7

    .line 1792
    .local v6, "i":I
    move/from16 v0, p2

    if-ne v0, v6, :cond_2

    .line 1793
    const/4 v5, 0x1

    .line 1795
    :cond_2
    invoke-static {v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->isValidIfd(I)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1796
    const/4 v12, -0x1

    goto :goto_0

    .line 1791
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1799
    .end local v6    # "i":I
    :cond_4
    if-nez v5, :cond_5

    .line 1800
    const/4 v12, -0x1

    goto :goto_0

    .line 1803
    :cond_5
    invoke-static/range {p5 .. p5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v8

    .line 1805
    .local v8, "ifdFlags":I
    if-eqz v11, :cond_7

    .line 1806
    move-object v3, v11

    array-length v10, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_7

    aget v4, v3, v7

    .line 1807
    .local v4, "def":I
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    .line 1808
    .local v13, "tagInfo":I
    invoke-static {v13}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v2

    .line 1809
    .local v2, "allowedFlags":I
    and-int v14, v8, v2

    if-eqz v14, :cond_6

    .line 1810
    const/4 v12, -0x1

    goto :goto_0

    .line 1806
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1814
    .end local v2    # "allowedFlags":I
    .end local v4    # "def":I
    .end local v13    # "tagInfo":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v14

    shl-int/lit8 v15, v8, 0x18

    shl-int/lit8 v16, p3, 0x10

    or-int v15, v15, v16

    or-int v15, v15, p4

    invoke-virtual {v14, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1817
    .end local v3    # "arr$":[I
    .end local v5    # "defaultCheck":Z
    .end local v7    # "i$":I
    .end local v8    # "ifdFlags":I
    .end local v9    # "infos":Landroid/util/SparseIntArray;
    .end local v10    # "len$":I
    .end local v11    # "otherDefs":[I
    .end local v12    # "tagDef":I
    :cond_8
    const/4 v12, -0x1

    goto :goto_0
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    .line 1695
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTag(II)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v0

    .line 1696
    .local v0, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v0, :cond_0

    .line 1697
    const/4 v1, 0x0

    .line 1699
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 1712
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1713
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1738
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 1739
    .local v1, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    goto :goto_0

    .line 1741
    .end local v1    # "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_0
    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "bmap"    # Landroid/graphics/Bitmap;
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 961
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 963
    :cond_1
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 964
    .local v0, "s":Ljava/io/OutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 965
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 966
    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p1, "bmap"    # Landroid/graphics/Bitmap;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1023
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1024
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1026
    :cond_1
    const/4 v1, 0x0

    .line 1028
    .local v1, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 1029
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1030
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1036
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1033
    throw v0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "jpegStream"    # Ljava/io/InputStream;
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 978
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 979
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 981
    :cond_1
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 982
    .local v0, "s":Ljava/io/OutputStream;
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 983
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 984
    return-void
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "jpegStream"    # Ljava/io/InputStream;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1049
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1050
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1052
    :cond_1
    const/4 v1, 0x0

    .line 1054
    .local v1, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 1055
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1056
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1062
    return-void

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1059
    throw v0
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "jpegFileName"    # Ljava/lang/String;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1076
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1077
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1079
    :cond_1
    const/4 v1, 0x0

    .line 1081
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1087
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1088
    return-void

    .line 1083
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1085
    throw v0

    .line 1083
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 3
    .param p1, "jpeg"    # [B
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 942
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 943
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 945
    :cond_1
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 946
    .local v0, "s":Ljava/io/OutputStream;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 947
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 948
    return-void
.end method

.method public writeExif([BLjava/lang/String;)V
    .locals 4
    .param p1, "jpeg"    # [B
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 997
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 998
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1000
    :cond_1
    const/4 v1, 0x0

    .line 1002
    .local v1, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 1003
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1004
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1010
    return-void

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1007
    throw v0
.end method
