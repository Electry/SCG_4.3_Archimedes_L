.class Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$2;
.super Ljava/lang/Object;
.source "AutoThumbnailDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)V
    .locals 0

    .prologue
    .line 307
    .local p0, "this":Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$2;, "Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable.2;"
    iput-object p1, p0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$2;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    .local p0, "this":Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$2;, "Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable.2;"
    iget-object v1, p0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$2;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    monitor-enter v1

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$2;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # invokes: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->updateDrawMatrixLocked()V
    invoke-static {v0}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$900(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)V

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$2;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->invalidateSelf()V

    .line 314
    monitor-exit v1

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
