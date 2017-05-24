.class Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$2;
.super Ljava/lang/Object;
.source "MulitiFrameCaptureAnim.java"

# interfaces
.implements Lcom/lenovo/scg/common/animation/ConvertBitmapTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;-><init>(Lcom/lenovo/scg/camera/mode/controller/MulitiFrameCaptureAnimController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$2;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$2;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$100(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$2;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$102(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$2;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$100(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method
