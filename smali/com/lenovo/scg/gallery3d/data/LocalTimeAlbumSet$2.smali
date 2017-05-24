.class Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$2;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V
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
    .line 286
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$2;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet$2;->this$0:Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;->notifyContentChanged()V

    .line 291
    return-void
.end method
