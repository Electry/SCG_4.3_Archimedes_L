.class Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$1;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSet.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$1;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$1;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    # getter for: Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->access$000(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;)Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->onChange(Z)V

    .line 88
    return-void
.end method
