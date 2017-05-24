.class Lcom/lenovo/scg/photos/views/SelectedPhotoView$1;
.super Ljava/lang/Object;
.source "SelectedPhotoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/photos/views/SelectedPhotoView;->notifyDataChange(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/views/SelectedPhotoView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/views/SelectedPhotoView;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView$1;->this$0:Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 75
    .local v1, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView$1;->this$0:Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    # getter for: Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mContainer:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->access$000(Lcom/lenovo/scg/photos/views/SelectedPhotoView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 76
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView$1;->this$0:Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    # getter for: Lcom/lenovo/scg/photos/views/SelectedPhotoView;->mSelectList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->access$100(Lcom/lenovo/scg/photos/views/SelectedPhotoView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/SelectedPhotoView$1;->this$0:Lcom/lenovo/scg/photos/views/SelectedPhotoView;

    # getter for: Lcom/lenovo/scg/photos/views/SelectedPhotoView;->listeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/photos/views/SelectedPhotoView;->access$200(Lcom/lenovo/scg/photos/views/SelectedPhotoView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/photos/views/SelectedPhotoView$OnDeleteListener;

    .line 78
    .local v2, "listener":Lcom/lenovo/scg/photos/views/SelectedPhotoView$OnDeleteListener;
    invoke-interface {v2, v1}, Lcom/lenovo/scg/photos/views/SelectedPhotoView$OnDeleteListener;->onDeleteListener(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V

    goto :goto_0

    .line 80
    .end local v2    # "listener":Lcom/lenovo/scg/photos/views/SelectedPhotoView$OnDeleteListener;
    :cond_0
    return-void
.end method
