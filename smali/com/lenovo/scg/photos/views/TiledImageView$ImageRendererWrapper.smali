.class Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
.super Ljava/lang/Object;
.source "TiledImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/views/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageRendererWrapper"
.end annotation


# instance fields
.field centerX:I

.field centerY:I

.field image:Lcom/lenovo/scg/photos/views/TiledImageRenderer;

.field rotation:I

.field scale:F

.field source:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/photos/views/TiledImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/photos/views/TiledImageView$1;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;-><init>()V

    return-void
.end method
