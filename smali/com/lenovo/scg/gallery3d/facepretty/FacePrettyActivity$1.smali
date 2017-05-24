.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;
.super Ljava/lang/Object;
.source "FacePrettyActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFromGoldbox()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFilterStackIndex:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setScaleBitmap(Landroid/graphics/Bitmap;I)V

    .line 558
    :cond_0
    if-eqz p1, :cond_1

    .line 559
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setBaseBitmap(Landroid/graphics/Bitmap;)V

    .line 567
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->setPicPostSrcBitmap(Landroid/graphics/Bitmap;)V

    .line 570
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveGenderLib()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f087b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 572
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startMarqueeForJudgeGender(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)V

    .line 577
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->drawEffectBitmapToScreen()V

    .line 579
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFindFaceAndJudgeGender()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 580
    :goto_1
    return-void

    .line 561
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f087c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
