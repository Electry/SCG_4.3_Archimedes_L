.class Lcom/lenovo/scg/gallery3d/app/Gallery$7;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/Gallery;->showDetectDialog()V
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
    .line 431
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$7;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$7;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    # getter for: Lcom/lenovo/scg/gallery3d/app/Gallery;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->access$100(Lcom/lenovo/scg/gallery3d/app/Gallery;)Lcom/lenovo/scg/common/ui/DetectDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/DetectDialog;->dismiss()V

    .line 435
    return-void
.end method
