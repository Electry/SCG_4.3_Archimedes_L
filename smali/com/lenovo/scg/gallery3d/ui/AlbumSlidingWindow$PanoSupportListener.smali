.class Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoSupportListener"
.end annotation


# instance fields
.field public final mEntry:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)V
    .locals 0
    .param p2, "entry"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;->mEntry:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 119
    return-void
.end method


# virtual methods
.method public panoramaInfoAvailable(Lcom/lenovo/scg/gallery3d/data/MediaObject;ZZ)V
    .locals 1
    .param p1, "mediaObject"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .param p2, "isPanorama"    # Z
    .param p3, "isPanorama360"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;->mEntry:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;->mEntry:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iput-boolean p2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    .line 124
    :cond_0
    return-void
.end method
