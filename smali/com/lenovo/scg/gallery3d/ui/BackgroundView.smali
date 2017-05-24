.class public Lcom/lenovo/scg/gallery3d/ui/BackgroundView;
.super Ljava/lang/Object;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/BackgroundView$BackgroundTexture;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/lenovo/scg/gallery3d/ui/BackgroundView;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBgTexture:Lcom/lenovo/scg/gallery3d/ui/BackgroundView$BackgroundTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->sInstance:Lcom/lenovo/scg/gallery3d/ui/BackgroundView;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "wangwf1_BackgroundView"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->mBgTexture:Lcom/lenovo/scg/gallery3d/ui/BackgroundView$BackgroundTexture;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/gallery3d/ui/BackgroundView;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->sInstance:Lcom/lenovo/scg/gallery3d/ui/BackgroundView;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->sInstance:Lcom/lenovo/scg/gallery3d/ui/BackgroundView;

    .line 47
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->sInstance:Lcom/lenovo/scg/gallery3d/ui/BackgroundView;

    return-object v0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->mBgTexture:Lcom/lenovo/scg/gallery3d/ui/BackgroundView$BackgroundTexture;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->mBgTexture:Lcom/lenovo/scg/gallery3d/ui/BackgroundView$BackgroundTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/BackgroundView$BackgroundTexture;->recycle()V

    .line 86
    :cond_0
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 80
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->mBgTexture:Lcom/lenovo/scg/gallery3d/ui/BackgroundView$BackgroundTexture;

    if-nez v0, :cond_0

    .line 56
    :cond_0
    return-void
.end method
