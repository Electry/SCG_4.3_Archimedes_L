.class Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;
.super Ljava/lang/Object;
.source "SubPicsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

.field final synthetic val$imageSelectIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;->val$imageSelectIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "category_BoxControlActivity"

    const-string v3, "action_BoxControlActivity_click_list_grid"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 136
    .local v0, "i":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mIsReplaceImage:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;->val$imageSelectIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    .line 181
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;->onPhotoSelectedChange(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V

    goto :goto_0

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f08cc

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 150
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->isNotCanBeSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0777

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 178
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;->val$imageSelectIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    goto :goto_1
.end method
