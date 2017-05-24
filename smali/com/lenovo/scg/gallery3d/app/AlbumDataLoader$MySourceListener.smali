.class Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$MySourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$1;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$MySourceListener;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$MySourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$400(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$MySourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->access$400(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    .line 237
    :cond_0
    return-void
.end method
