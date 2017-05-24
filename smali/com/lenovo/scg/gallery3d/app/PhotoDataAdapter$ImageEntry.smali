.class Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEntry"
.end annotation


# instance fields
.field public failToLoad:Z

.field public fullImage:Landroid/graphics/BitmapRegionDecoder;

.field public fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field public requestedFullImage:J

.field public requestedScreenNail:J

.field public screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

.field public screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 995
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 997
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;

    .prologue
    .line 983
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>()V

    return-void
.end method
