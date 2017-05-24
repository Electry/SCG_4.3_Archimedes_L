.class public Lcom/lenovo/scg/camera/facetracking/MFaceResult;
.super Ljava/lang/Object;
.source "MFaceResult.java"


# instance fields
.field public faceNumber:I

.field public faceOriention:[I

.field public faceRect:[Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->Init()V

    .line 43
    return-void
.end method


# virtual methods
.method public Init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceNumber:I

    .line 47
    iput-object v1, p0, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceRect:[Landroid/graphics/Rect;

    .line 48
    iput-object v1, p0, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceOriention:[I

    .line 49
    return-void
.end method
