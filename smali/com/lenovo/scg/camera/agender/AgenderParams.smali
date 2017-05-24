.class public Lcom/lenovo/scg/camera/agender/AgenderParams;
.super Ljava/lang/Object;
.source "AgenderParams.java"


# instance fields
.field public isStaticImage:Z

.field public mAgeResultArray:[I

.field public mFaceNumber:I

.field public mFaceOriention:[I

.field public mFaceRect:[Landroid/graphics/Rect;

.field public mGenderResultArray:[I

.field public mbDetectAge:Z

.field public mbDetectGender:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceNumber:I

    .line 7
    iput-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceRect:[Landroid/graphics/Rect;

    .line 8
    iput-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceOriention:[I

    .line 10
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mbDetectAge:Z

    .line 11
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mbDetectGender:Z

    .line 13
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/agender/AgenderParams;->isStaticImage:Z

    .line 15
    iput-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mAgeResultArray:[I

    .line 16
    iput-object v1, p0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mGenderResultArray:[I

    return-void
.end method
