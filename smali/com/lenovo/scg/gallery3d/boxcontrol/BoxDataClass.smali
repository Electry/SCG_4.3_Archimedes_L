.class public Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;
.super Ljava/lang/Object;
.source "BoxDataClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass$RequestType;
    }
.end annotation


# static fields
.field public static final M_BOX_CONTROL_ACTION:Ljava/lang/String; = "android.boxcontrol.action"

.field public static final M_BOX_CONTROL_REQUEST_ACTION:Ljava/lang/String; = "android.boxcontrol.request_action"

.field public static final M_CAMERA_CATALOGUE_NAME:Ljava/lang/String; = "Camera"

.field public static final M_CONTINUOUS_CATALOGUE_NAME:Ljava/lang/String; = "continuous_"

.field public static final M_MULTI_PICS_REQUEST:I = 0x1

.field public static final M_REFRESH_RECENT_DATA:I = 0xfa

.field public static final M_REQUEST_CAMERA_CODE:I = 0xf0

.field public static final M_REQUEST_CLASS_KEY:Ljava/lang/String; = "request_class_key"

.field public static final M_REQUEST_CODE:I = 0xff

.field public static final M_REQUEST_KEY:Ljava/lang/String; = "request_pics_key"

.field public static final M_RETURN_MULTI_PICS_URI_KEY:Ljava/lang/String; = "return_multi_pics_key"

.field public static final M_RETURN_SINGLE_PIC_URI_KEY:Ljava/lang/String; = "return_single_pic_key"

.field public static final M_SINGLE_PIC_REQUEST:I = 0x0

.field private static final mCameraPicName:Ljava/lang/String; = "CameraPic.jpg"

.field private static final mCameraPicName2:Ljava/lang/String; = "CameraPic2.jpg"

.field public static mCurrentType:I

.field public static mIsContainCameraCatalogue:Z

.field public static mIsContinuousCatalogue:Z

.field public static mIsShowDividedView:Z

.field public static mSDPath:Ljava/lang/String;

.field public static mSingleMode_FirstIcon_Position:I


# instance fields
.field public mIsCameraBack:Z

.field private mRecentPicList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mSDPath:Ljava/lang/String;

    .line 48
    sput v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mCurrentType:I

    .line 50
    const/16 v0, 0xfe

    sput v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mSingleMode_FirstIcon_Position:I

    .line 52
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsContainCameraCatalogue:Z

    .line 54
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsShowDividedView:Z

    .line 56
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsContinuousCatalogue:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsCameraBack:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mRecentPicList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .line 64
    return-void
.end method

.method public static getSDPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v3, 0x0

    .line 86
    .local v3, "sdDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 92
    if-eqz v3, :cond_0

    .line 93
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "hh_mm_ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 95
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "currentTime":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 98
    const/4 v4, 0x0

    sput-object v4, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mSDPath:Ljava/lang/String;

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mSDPath:Ljava/lang/String;

    .line 109
    .end local v0    # "curDate":Ljava/util/Date;
    .end local v1    # "currentTime":Ljava/lang/String;
    .end local v2    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_0
    sget-object v4, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mSDPath:Ljava/lang/String;

    return-object v4
.end method

.method public static getmCurrentType()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mCurrentType:I

    return v0
.end method

.method public static setmCurrentType(I)V
    .locals 0
    .param p0, "mCurrentType"    # I

    .prologue
    .line 71
    sput p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mCurrentType:I

    .line 72
    return-void
.end method


# virtual methods
.method public getmRecentPicList()Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mRecentPicList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    return-object v0
.end method

.method public setmRecentPicList(Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;)V
    .locals 0
    .param p1, "mRecentPicList"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mRecentPicList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .line 80
    return-void
.end method
