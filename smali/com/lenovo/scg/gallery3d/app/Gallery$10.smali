.class Lcom/lenovo/scg/gallery3d/app/Gallery$10;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/Gallery;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/Gallery;)V
    .locals 0

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$10;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1104
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$10;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 1105
    .local v0, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1106
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "media-path"

    const-string v3, "/local/all"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    if-eqz v0, :cond_0

    .line 1108
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$10;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v0, v3, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1112
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$10;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    const v3, 0x7f10084b

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/app/Gallery;->updateMenuItem(I)V

    .line 1113
    return-void

    .line 1110
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$10;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method
