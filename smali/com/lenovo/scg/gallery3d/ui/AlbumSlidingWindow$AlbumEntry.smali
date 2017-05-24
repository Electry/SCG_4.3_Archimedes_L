.class public Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumEntry"
.end annotation


# instance fields
.field public bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

.field public content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

.field private contentLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

.field public isGif:Z

.field public isPanorama:Z

.field public isPanoramaPic:Z

.field public isSpeech:Z

.field public isWaitDisplayed:Z

.field public item:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private mPanoSupportListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

.field public mediaType:I

.field public path:Lcom/lenovo/scg/gallery3d/data/Path;

.field public rotation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mPanoSupportListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mPanoSupportListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    return-object p1
.end method
