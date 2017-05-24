.class Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$1;
.super Ljava/lang/Object;
.source "TiltShiftActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->access$100(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mFilterStackIndex:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->access$000(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setScaleBitmap(Landroid/graphics/Bitmap;I)V

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iput-object p1, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->showInitView()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->access$200(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;)V

    .line 167
    return-void
.end method
