.class Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$MySourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$MySourceListener;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$MySourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$300(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->notifyDirty()V

    .line 254
    return-void
.end method
