.class Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$6;
.super Ljava/lang/Object;
.source "BoxControlActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->dealwithViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoSelectedChange(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V
    .locals 1
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .prologue
    .line 344
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1800(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1800(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->updateOkBtn()V

    .line 360
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->returnSelectPic(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V

    .line 369
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1800(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1800(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
