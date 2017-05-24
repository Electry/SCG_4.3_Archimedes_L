.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetEntry"
.end annotation


# instance fields
.field public album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field public bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

.field public cacheFlag:I

.field public cacheStatus:I

.field public content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

.field public coverDataVersion:J

.field public isGif:Z

.field public isHead:Z

.field public isOverCount:Z

.field public isPanorama:Z

.field public isSpeech:Z

.field public isWaitLoadingDisplayed:Z

.field public item:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

.field private labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

.field public labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

.field public mediaType:I

.field public rotation:I

.field public setDataVersion:J

.field public setPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field public sourceType:I

.field private tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

.field public tailLabelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

.field public title:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    return-object p1
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 167
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 168
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->item:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 169
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 170
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 171
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 172
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 173
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 174
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    .line 175
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    .line 176
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    .line 177
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->cacheFlag:I

    .line 178
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->cacheStatus:I

    .line 179
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    .line 180
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->mediaType:I

    .line 181
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 182
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->setDataVersion:J

    .line 183
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    .line 188
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isGif:Z

    .line 189
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isSpeech:Z

    .line 190
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isOverCount:Z

    .line 191
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isPanorama:Z

    .line 192
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isHead:Z

    .line 193
    return-void
.end method
