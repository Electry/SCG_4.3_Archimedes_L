.class public Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetEntry"
.end annotation


# instance fields
.field public album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field public bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

.field public cacheFlag:I

.field public cacheStatus:I

.field public content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

.field public coverDataVersion:J

.field public coverItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

.field public isGif:Z

.field public isPanorama:Z

.field public isSpeech:Z

.field public isWaitLoadingDisplayed:Z

.field private labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

.field public labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

.field public rotation:I

.field public setDataVersion:J

.field public setPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field public sourceType:I

.field public title:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    return-object p1
.end method
