.class Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$11;
.super Ljava/lang/Object;
.source "BoxControlActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView$OnDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->setViewData()V
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
    .line 657
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteListener(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V
    .locals 1
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1800(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1800(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 672
    :cond_0
    return-void
.end method
