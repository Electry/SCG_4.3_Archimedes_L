.class Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$2;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 2

    .prologue
    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$500(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->dismissDialog()Z

    .line 384
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$502(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    goto :goto_0
.end method
