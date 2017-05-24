.class public Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
.super Ljava/lang/Object;
.source "MiniCameraExifTag.java"


# static fields
.field private static final LONG_MAX:J = 0x7fffffffL

.field private static final LONG_MIN:J = -0x80000000L

.field static final SIZE_UNDEFINED:I = 0x0

.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final TYPE_ASCII:S = 0x2s

.field public static final TYPE_LONG:S = 0x9s

.field public static final TYPE_RATIONAL:S = 0xas

.field private static final TYPE_TO_SIZE_MAP:[I

.field public static final TYPE_UNDEFINED:S = 0x7s

.field public static final TYPE_UNSIGNED_BYTE:S = 0x1s

.field public static final TYPE_UNSIGNED_LONG:S = 0x4s

.field public static final TYPE_UNSIGNED_RATIONAL:S = 0x5s

.field public static final TYPE_UNSIGNED_SHORT:S = 0x3s

.field private static final UNSIGNED_LONG_MAX:J = 0xffffffffL

.field private static final UNSIGNED_SHORT_MAX:I = 0xffff

.field private static US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 86
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    .line 88
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TYPE_TO_SIZE_MAP:[I

    .line 99
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v2

    .line 100
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v4

    .line 101
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 102
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v3, v0, v3

    .line 103
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    .line 104
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 105
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 106
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 132
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 1
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "componentCount"    # I
    .param p4, "ifd"    # I
    .param p5, "hasDefinedComponentCount"    # Z

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-short p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mTagId:S

    .line 153
    iput-short p2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    .line 154
    iput p3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    .line 155
    iput-boolean p5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 156
    iput p4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mIfd:I

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    .line 158
    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 909
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    .line 910
    const/4 v0, 0x1

    .line 912
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOverflowForRational([Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Z
    .locals 10
    .param p1, "value"    # [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    .prologue
    const-wide/32 v8, 0x7fffffff

    const-wide/32 v6, -0x80000000

    .line 975
    move-object v0, p1

    .local v0, "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 976
    .local v3, "v":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 977
    :cond_0
    const/4 v4, 0x1

    .line 980
    .end local v3    # "v":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    :goto_1
    return v4

    .line 975
    .restart local v3    # "v":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 980
    .end local v3    # "v":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 5
    .param p1, "value"    # [I

    .prologue
    .line 957
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 958
    .local v3, "v":I
    if-gez v3, :cond_0

    .line 959
    const/4 v4, 0x1

    .line 962
    .end local v3    # "v":I
    :goto_1
    return v4

    .line 957
    .restart local v3    # "v":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 962
    .end local v3    # "v":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 8
    .param p1, "value"    # [J

    .prologue
    .line 948
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-wide v4, v0, v1

    .line 949
    .local v4, "v":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    const-wide v6, 0xffffffffL

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 950
    :cond_0
    const/4 v3, 0x1

    .line 953
    .end local v4    # "v":J
    :goto_1
    return v3

    .line 948
    .restart local v4    # "v":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 953
    .end local v4    # "v":J
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedRational([Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Z
    .locals 10
    .param p1, "value"    # [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    .prologue
    const-wide v8, 0xffffffffL

    const-wide/16 v6, 0x0

    .line 966
    move-object v0, p1

    .local v0, "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 967
    .local v3, "v":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 968
    :cond_0
    const/4 v4, 0x1

    .line 971
    .end local v3    # "v":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    :goto_1
    return v4

    .line 966
    .restart local v3    # "v":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 971
    .end local v3    # "v":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 5
    .param p1, "value"    # [I

    .prologue
    .line 939
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 940
    .local v3, "v":I
    const v4, 0xffff

    if-gt v3, v4, :cond_0

    if-gez v3, :cond_1

    .line 941
    :cond_0
    const/4 v4, 0x1

    .line 944
    .end local v3    # "v":I
    :goto_1
    return v4

    .line 939
    .restart local v3    # "v":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 944
    .end local v3    # "v":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # S

    .prologue
    .line 916
    packed-switch p0, :pswitch_data_0

    .line 934
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 918
    :pswitch_1
    const-string v0, "UNSIGNED_BYTE"

    goto :goto_0

    .line 920
    :pswitch_2
    const-string v0, "ASCII"

    goto :goto_0

    .line 922
    :pswitch_3
    const-string v0, "UNSIGNED_SHORT"

    goto :goto_0

    .line 924
    :pswitch_4
    const-string v0, "UNSIGNED_LONG"

    goto :goto_0

    .line 926
    :pswitch_5
    const-string v0, "UNSIGNED_RATIONAL"

    goto :goto_0

    .line 928
    :pswitch_6
    const-string v0, "UNDEFINED"

    goto :goto_0

    .line 930
    :pswitch_7
    const-string v0, "LONG"

    goto :goto_0

    .line 932
    :pswitch_8
    const-string v0, "RATIONAL"

    goto :goto_0

    .line 916
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .locals 1
    .param p0, "type"    # S

    .prologue
    .line 173
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TYPE_TO_SIZE_MAP:[I

    aget v0, v0, p0

    return v0
.end method

.method public static isValidIfd(I)Z
    .locals 2
    .param p0, "ifdId"    # I

    .prologue
    const/4 v0, 0x1

    .line 138
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidType(S)Z
    .locals 2
    .param p0, "type"    # S

    .prologue
    const/4 v0, 0x1

    .line 146
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 985
    if-nez p1, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return v1

    .line 988
    :cond_1
    instance-of v2, p1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 989
    check-cast v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 990
    .local v0, "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    iget-short v2, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mTagId:S

    iget-short v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mTagId:S

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    iget v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    if-ne v2, v3, :cond_0

    iget-short v2, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    iget-short v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-ne v2, v3, :cond_0

    .line 993
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 994
    iget-object v2, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 996
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_2

    .line 997
    iget-object v2, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    iget-object v2, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    goto :goto_0

    .line 1001
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    if-eqz v2, :cond_3

    .line 1002
    iget-object v2, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    if-eqz v2, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    check-cast v1, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    iget-object v2, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    check-cast v2, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 1006
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_4

    .line 1007
    iget-object v2, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 1012
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    iget-object v2, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 1015
    :cond_5
    iget-object v2, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public forceGetValueAsLong(J)J
    .locals 9
    .param p1, "defaultValue"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 755
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsLongs()[J

    move-result-object v1

    .line 756
    .local v1, "l":[J
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lt v3, v4, :cond_1

    .line 757
    aget-wide p1, v1, v8

    .line 767
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 759
    .restart local p1    # "defaultValue":J
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsBytes()[B

    move-result-object v0

    .line 760
    .local v0, "b":[B
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lt v3, v4, :cond_2

    .line 761
    aget-byte v3, v0, v8

    int-to-long p1, v3

    goto :goto_0

    .line 763
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsRationals()[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v2

    .line 764
    .local v2, "r":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lt v3, v4, :cond_0

    aget-object v3, v2, v8

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getDenominator()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 765
    aget-object v3, v2, v8

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->toDouble()D

    move-result-wide v4

    double-to-long p1, v4

    goto :goto_0
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 774
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 775
    const-string v1, ""

    .line 800
    :goto_0
    return-object v1

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    .line 777
    iget-short v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 778
    new-instance v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    sget-object v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v2

    goto :goto_0

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 782
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_4

    .line 783
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    array-length v1, v1

    if-ne v1, v3, :cond_3

    .line 784
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 786
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 788
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 789
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-ne v1, v3, :cond_6

    .line 790
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 791
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_5

    .line 792
    const-string v1, ""

    goto :goto_0

    .line 794
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 797
    .end local v0    # "val":Ljava/lang/Object;
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 800
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected forceSetComponentCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    .line 239
    return-void
.end method

.method protected getBytes([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 863
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getBytes([BII)V

    .line 864
    return-void
.end method

.method protected getBytes([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 879
    iget-short v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 880
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get BYTE value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    invoke-static {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    if-le p3, v2, :cond_1

    iget p3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    .end local p3    # "length":I
    :cond_1
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 883
    return-void
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    return v0
.end method

.method public getDataSize()I
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getElementSize(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    .prologue
    .line 213
    iget-short v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mIfd:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    .prologue
    .line 890
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mOffset:I

    return v0
.end method

.method protected getRational(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 853
    iget-short v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get RATIONAL value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    invoke-static {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    check-cast v0, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 831
    iget-short v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 832
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get ASCII value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    invoke-static {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    sget-object v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method protected getStringByte()[B
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getTagId()S
    .locals 1

    .prologue
    .line 197
    iget-short v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mTagId:S

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsByte(B)B
    .locals 3
    .param p1, "defaultValue"    # B

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsBytes()[B

    move-result-object v0

    .line 614
    .local v0, "b":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 617
    .end local p1    # "defaultValue":B
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "defaultValue":B
    :cond_1
    const/4 v1, 0x0

    aget-byte p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsBytes()[B
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 600
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsInt(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsInts()[I

    move-result-object v0

    .line 701
    .local v0, "i":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 704
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :cond_1
    const/4 v1, 0x0

    aget p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsInts()[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 677
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 687
    :cond_0
    return-object v0

    .line 679
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v3, v3, [J

    if-eqz v3, :cond_0

    .line 680
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v3, [J

    move-object v2, v3

    check-cast v2, [J

    .line 681
    .local v2, "val":[J
    array-length v3, v2

    new-array v0, v3, [I

    .line 682
    .local v0, "arr":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 683
    aget-wide v4, v2, v1

    long-to-int v3, v4

    aput v3, v0, v1

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getValueAsLong(J)J
    .locals 3
    .param p1, "defaultValue"    # J

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsLongs()[J

    move-result-object v0

    .line 733
    .local v0, "l":[J
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 736
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .restart local p1    # "defaultValue":J
    :cond_1
    const/4 v1, 0x0

    aget-wide p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsLongs()[J
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    .line 719
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsRational(J)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .locals 5
    .param p1, "defaultValue"    # J

    .prologue
    .line 664
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    const-wide/16 v2, 0x1

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;-><init>(JJ)V

    .line 665
    .local v0, "defaultVal":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsRational(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v1

    return-object v1
.end method

.method public getValueAsRational(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .locals 3
    .param p1, "defaultValue"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsRationals()[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v0

    .line 647
    .local v0, "r":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 650
    .end local p1    # "defaultValue":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    :cond_1
    const/4 v1, 0x0

    aget-object p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsRationals()[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    check-cast v0, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    .line 633
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 563
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-object v0

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 566
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 567
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_0

    .line 568
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    sget-object v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 586
    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method protected getValueAt(I)J
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 816
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v0, v0, p1

    .line 819
    :goto_0
    return-wide v0

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 821
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get integer value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    invoke-static {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasDefinedCount()Z
    .locals 1

    .prologue
    .line 905
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setHasDefinedCount(Z)V
    .locals 0
    .param p1, "d"    # Z

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 902
    return-void
.end method

.method protected setIfd(I)V
    .locals 0
    .param p1, "ifdId"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mIfd:I

    .line 191
    return-void
.end method

.method protected setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 897
    iput p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mOffset:I

    .line 898
    return-void
.end method

.method public setTimeValue(J)Z
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 550
    sget-object v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 551
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(B)Z
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 465
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([B)Z

    move-result v0

    return v0
.end method

.method public setValue(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 297
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([I)Z

    move-result v0

    return v0
.end method

.method public setValue(J)Z
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 334
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([J)Z

    move-result v0

    return v0
.end method

.method public setValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Z
    .locals 2
    .param p1, "value"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    .prologue
    .line 420
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const v5, 0xffff

    const/4 v4, 0x0

    .line 479
    if-nez p1, :cond_1

    .line 534
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 481
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ljava/lang/Short;

    if-eqz v3, :cond_2

    .line 482
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v3

    and-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(I)Z

    move-result v4

    goto :goto_0

    .line 483
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 484
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 485
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, [I

    if-eqz v3, :cond_4

    .line 486
    check-cast p1, [I

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([I)Z

    move-result v4

    goto :goto_0

    .line 487
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, [J

    if-eqz v3, :cond_5

    .line 488
    check-cast p1, [J

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([J)Z

    move-result v4

    goto :goto_0

    .line 489
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v3, p1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    if-eqz v3, :cond_6

    .line 490
    check-cast p1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Z

    move-result v4

    goto :goto_0

    .line 491
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v3, p1, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    if-eqz v3, :cond_7

    .line 492
    check-cast p1, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Z

    move-result v4

    goto :goto_0

    .line 493
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_7
    instance-of v3, p1, [B

    if-eqz v3, :cond_8

    .line 494
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([B)Z

    move-result v4

    goto :goto_0

    .line 495
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    .line 496
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(I)Z

    move-result v4

    goto :goto_0

    .line 497
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_a

    .line 498
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(J)Z

    move-result v4

    goto :goto_0

    .line 499
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_a
    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_b

    .line 500
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(B)Z

    move-result v4

    goto/16 :goto_0

    .line 501
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_b
    instance-of v3, p1, [Ljava/lang/Short;

    if-eqz v3, :cond_e

    .line 503
    check-cast p1, [Ljava/lang/Short;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Short;

    .line 504
    .local v0, "arr":[Ljava/lang/Short;
    array-length v3, v0

    new-array v1, v3, [I

    .line 505
    .local v1, "fin":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_d

    .line 506
    aget-object v3, v0, v2

    if-nez v3, :cond_c

    move v3, v4

    :goto_2
    aput v3, v1, v2

    .line 505
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 506
    :cond_c
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    and-int/2addr v3, v5

    goto :goto_2

    .line 508
    :cond_d
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([I)Z

    move-result v4

    goto/16 :goto_0

    .line 509
    .end local v0    # "arr":[Ljava/lang/Short;
    .end local v1    # "fin":[I
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_e
    instance-of v3, p1, [Ljava/lang/Integer;

    if-eqz v3, :cond_11

    .line 511
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Integer;

    .line 512
    .local v0, "arr":[Ljava/lang/Integer;
    array-length v3, v0

    new-array v1, v3, [I

    .line 513
    .restart local v1    # "fin":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_10

    .line 514
    aget-object v3, v0, v2

    if-nez v3, :cond_f

    move v3, v4

    :goto_4
    aput v3, v1, v2

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 514
    :cond_f
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    .line 516
    :cond_10
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([I)Z

    move-result v4

    goto/16 :goto_0

    .line 517
    .end local v0    # "arr":[Ljava/lang/Integer;
    .end local v1    # "fin":[I
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_11
    instance-of v3, p1, [Ljava/lang/Long;

    if-eqz v3, :cond_14

    .line 519
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Long;

    .line 520
    .local v0, "arr":[Ljava/lang/Long;
    array-length v3, v0

    new-array v1, v3, [J

    .line 521
    .local v1, "fin":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_13

    .line 522
    aget-object v3, v0, v2

    if-nez v3, :cond_12

    const-wide/16 v4, 0x0

    :goto_6
    aput-wide v4, v1, v2

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 522
    :cond_12
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_6

    .line 524
    :cond_13
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([J)Z

    move-result v4

    goto/16 :goto_0

    .line 525
    .end local v0    # "arr":[Ljava/lang/Long;
    .end local v1    # "fin":[J
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_14
    instance-of v3, p1, [Ljava/lang/Byte;

    if-eqz v3, :cond_0

    .line 527
    check-cast p1, [Ljava/lang/Byte;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Byte;

    .line 528
    .local v0, "arr":[Ljava/lang/Byte;
    array-length v3, v0

    new-array v1, v3, [B

    .line 529
    .local v1, "fin":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_16

    .line 530
    aget-object v3, v0, v2

    if-nez v3, :cond_15

    move v3, v4

    :goto_8
    aput-byte v3, v1, v2

    .line 529
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 530
    :cond_15
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_8

    .line 532
    :cond_16
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([B)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 354
    iget-short v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-eq v5, v6, :cond_1

    iget-short v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-eq v5, v7, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v3

    .line 358
    :cond_1
    sget-object v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 359
    .local v0, "buf":[B
    move-object v2, v0

    .line 360
    .local v2, "finalBuf":[B
    array-length v5, v0

    if-lez v5, :cond_5

    .line 361
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    if-eqz v5, :cond_2

    iget-short v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-ne v5, v7, :cond_4

    :cond_2
    move-object v2, v0

    .line 365
    :cond_3
    :goto_1
    array-length v1, v2

    .line 366
    .local v1, "count":I
    invoke-direct {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->checkBadComponentCount(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 369
    iput v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    .line 370
    iput-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    move v3, v4

    .line 371
    goto :goto_0

    .line 361
    .end local v1    # "count":I
    :cond_4
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_1

    .line 362
    :cond_5
    iget-short v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    if-ne v5, v4, :cond_3

    .line 363
    new-array v2, v4, [B

    .end local v2    # "finalBuf":[B
    aput-byte v3, v2, v3

    .restart local v2    # "finalBuf":[B
    goto :goto_1
.end method

.method public setValue([B)Z
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 451
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([BII)Z

    move-result v0

    return v0
.end method

.method public setValue([BII)Z
    .locals 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, p3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    iget-short v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-eq v2, v1, :cond_2

    iget-short v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 441
    :cond_2
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    .line 442
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    iput p3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    move v0, v1

    .line 444
    goto :goto_0
.end method

.method public setValue([I)Z
    .locals 7
    .param p1, "value"    # [I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 263
    array-length v3, p1

    invoke-direct {p0, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->checkBadComponentCount(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v2

    .line 266
    :cond_1
    iget-short v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-eq v3, v5, :cond_2

    iget-short v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-short v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-ne v3, v6, :cond_0

    .line 269
    :cond_2
    iget-short v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-ne v3, v5, :cond_3

    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    :cond_3
    iget-short v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-ne v3, v6, :cond_4

    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    :cond_4
    array-length v2, p1

    new-array v0, v2, [J

    .line 276
    .local v0, "data":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 277
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 279
    :cond_5
    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    .line 280
    array-length v2, p1

    iput v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    .line 281
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setValue([J)Z
    .locals 3
    .param p1, "value"    # [J

    .prologue
    const/4 v0, 0x0

    .line 312
    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-short v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    .line 319
    array-length v0, p1

    iput v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    .line 320
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValue([Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Z
    .locals 4
    .param p1, "value"    # [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x5

    const/4 v0, 0x0

    .line 389
    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 392
    :cond_1
    iget-short v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-eq v1, v2, :cond_2

    iget-short v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-ne v1, v3, :cond_0

    .line 395
    :cond_2
    iget-short v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->checkOverflowForUnsignedRational([Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    :cond_3
    iget-short v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    if-ne v1, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->checkOverflowForRational([Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    :cond_4
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mValue:Ljava/lang/Object;

    .line 402
    array-length v0, p1

    iput v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    .line 403
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tag id: %04X\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mTagId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mDataType:S

    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
