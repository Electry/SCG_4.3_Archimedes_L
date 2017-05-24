.class public Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;
.super Ljava/lang/Object;
.source "CropExtras.java"


# static fields
.field public static final KEY_ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final KEY_ASPECT_Y:Ljava/lang/String; = "aspectY"

.field public static final KEY_CROPPED_RECT:Ljava/lang/String; = "cropped-rect"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_NO_FACE_DETECTION:Ljava/lang/String; = "noFaceDetection"

.field public static final KEY_OUTPUT_FORMAT:Ljava/lang/String; = "outputFormat"

.field public static final KEY_OUTPUT_X:Ljava/lang/String; = "outputX"

.field public static final KEY_OUTPUT_Y:Ljava/lang/String; = "outputY"

.field public static final KEY_RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final KEY_SCALE:Ljava/lang/String; = "scale"

.field public static final KEY_SCALE_UP_IF_NEEDED:Ljava/lang/String; = "scaleUpIfNeeded"

.field public static final KEY_SET_AS_WALLPAPER:Ljava/lang/String; = "set-as-wallpaper"

.field public static final KEY_SHOW_WHEN_LOCKED:Ljava/lang/String; = "showWhenLocked"

.field public static final KEY_SPOTLIGHT_X:Ljava/lang/String; = "spotlightX"

.field public static final KEY_SPOTLIGHT_Y:Ljava/lang/String; = "spotlightY"


# instance fields
.field private mAspectX:I

.field private mAspectY:I

.field private mExtraOutput:Landroid/net/Uri;

.field private mOutputFormat:Ljava/lang/String;

.field private mOutputX:I

.field private mOutputY:I

.field private mReturnData:Z

.field private mScaleUp:Z

.field private mSetAsWallpaper:Z

.field private mShowWhenLocked:Z

.field private mSpotlightX:F

.field private mSpotlightY:F


# direct methods
.method public constructor <init>(IIZIIZZLandroid/net/Uri;Ljava/lang/String;ZFF)V
    .locals 1
    .param p1, "outputX"    # I
    .param p2, "outputY"    # I
    .param p3, "scaleUp"    # Z
    .param p4, "aspectX"    # I
    .param p5, "aspectY"    # I
    .param p6, "setAsWallpaper"    # Z
    .param p7, "returnData"    # Z
    .param p8, "extraOutput"    # Landroid/net/Uri;
    .param p9, "outputFormat"    # Ljava/lang/String;
    .param p10, "showWhenLocked"    # Z
    .param p11, "spotlightX"    # F
    .param p12, "spotlightY"    # F

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mOutputX:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mOutputY:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mScaleUp:Z

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mAspectX:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mAspectY:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mSetAsWallpaper:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mReturnData:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mExtraOutput:Landroid/net/Uri;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mOutputFormat:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mShowWhenLocked:Z

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mSpotlightX:F

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mSpotlightY:F

    .line 79
    iput p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mOutputX:I

    .line 80
    iput p2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mOutputY:I

    .line 81
    iput-boolean p3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mScaleUp:Z

    .line 82
    iput p4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mAspectX:I

    .line 83
    iput p5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mAspectY:I

    .line 84
    iput-boolean p6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mSetAsWallpaper:Z

    .line 85
    iput-boolean p7, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mReturnData:Z

    .line 86
    iput-object p8, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mExtraOutput:Landroid/net/Uri;

    .line 87
    iput-object p9, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mOutputFormat:Ljava/lang/String;

    .line 88
    iput-boolean p10, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mShowWhenLocked:Z

    .line 89
    iput p11, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mSpotlightX:F

    .line 90
    iput p12, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mSpotlightY:F

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;)V
    .locals 13
    .param p1, "c"    # Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    .prologue
    .line 94
    iget v1, p1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mOutputX:I

    iget v2, p1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mOutputY:I

    iget-boolean v3, p1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mScaleUp:Z

    iget v4, p1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mAspectX:I

    iget v5, p1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mAspectY:I

    iget-boolean v6, p1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mSetAsWallpaper:Z

    iget-boolean v7, p1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mReturnData:Z

    iget-object v8, p1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mExtraOutput:Landroid/net/Uri;

    iget-object v9, p1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mOutputFormat:Ljava/lang/String;

    iget-boolean v10, p1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mShowWhenLocked:Z

    iget v11, p1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mSpotlightX:F

    iget v12, p1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mSpotlightY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;-><init>(IIZIIZZLandroid/net/Uri;Ljava/lang/String;ZFF)V

    .line 96
    return-void
.end method


# virtual methods
.method public getAspectX()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mAspectX:I

    return v0
.end method

.method public getAspectY()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mAspectY:I

    return v0
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mExtraOutput:Landroid/net/Uri;

    return-object v0
.end method

.method public getOutputFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mOutputFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputX()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mOutputX:I

    return v0
.end method

.method public getOutputY()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mOutputY:I

    return v0
.end method

.method public getReturnData()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mReturnData:Z

    return v0
.end method

.method public getScaleUp()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mScaleUp:Z

    return v0
.end method

.method public getSetAsWallpaper()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mSetAsWallpaper:Z

    return v0
.end method

.method public getShowWhenLocked()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mShowWhenLocked:Z

    return v0
.end method

.method public getSpotlightX()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mSpotlightX:F

    return v0
.end method

.method public getSpotlightY()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->mSpotlightY:F

    return v0
.end method
