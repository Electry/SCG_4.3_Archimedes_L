.class public Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraConfig;
.super Ljava/lang/Object;
.source "MiniCameraConfig.java"


# static fields
.field private static final mInstance:Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraConfig;


# instance fields
.field private mIsForeign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraConfig;

    invoke-direct {v0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraConfig;-><init>()V

    sput-object v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraConfig;->mInstance:Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraConfig;->mIsForeign:Z

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraConfig;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraConfig;->mInstance:Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraConfig;

    return-object v0
.end method


# virtual methods
.method public getIsForeign()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraConfig;->mIsForeign:Z

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 26
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraConfig;->mIsForeign:Z

    .line 27
    return-void
.end method
