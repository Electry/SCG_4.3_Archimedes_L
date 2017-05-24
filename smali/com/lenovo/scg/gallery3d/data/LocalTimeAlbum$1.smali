.class Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum$1;
.super Ljava/lang/Object;
.source "LocalTimeAlbum.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum$1;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum$1;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;

    const/4 v1, -0x1

    # setter for: Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mCachedCount:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->access$002(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;I)I

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum$1;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;

    # getter for: Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->access$100(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;)Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->forceChange()V

    .line 108
    return-void
.end method
