.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;
.super Ljava/lang/Object;
.source "FacePrettyActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnEffectIgvewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0

    .prologue
    .line 3149
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3155
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 3156
    const/4 v9, 0x0

    .line 3246
    :goto_0
    return v9

    .line 3159
    :cond_0
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 3160
    const/4 v9, 0x0

    goto :goto_0

    .line 3163
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 3164
    .local v7, "touchx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 3165
    .local v8, "touchy":I
    if-ltz v7, :cond_2

    .line 3166
    :goto_1
    if-ltz v8, :cond_3

    .line 3168
    :goto_2
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v9

    if-ne p1, v9, :cond_5

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->isCanClick()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3170
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3171
    const/4 v9, 0x0

    goto :goto_0

    .line 3165
    :cond_2
    neg-int v7, v7

    goto :goto_1

    .line 3166
    :cond_3
    neg-int v8, v8

    goto :goto_2

    .line 3174
    :cond_4
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isTouchFaceRec(II)Z
    invoke-static {v9, v7, v8}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;II)Z

    move-result v6

    .line 3176
    .local v6, "inFace":Z
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v9

    if-nez v9, :cond_7

    .line 3177
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 3178
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3179
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f0207bf

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3180
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const/4 v10, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z
    invoke-static {v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9302(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z

    .line 3246
    .end local v6    # "inFace":Z
    :cond_5
    :goto_3
    const/4 v9, 0x0

    goto :goto_0

    .line 3182
    .restart local v6    # "inFace":Z
    :cond_6
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f0207c0

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3183
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const/4 v10, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z
    invoke-static {v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9302(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z

    goto :goto_3

    .line 3186
    :cond_7
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isShowing:Z
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v6, :cond_5

    .line 3188
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3189
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleManual:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3191
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->resetColor()V
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 3193
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setCircleProgressViewUnSelected()V
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 3195
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const/4 v10, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isShowing:Z
    invoke-static {v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5002(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z

    .line 3196
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const/4 v10, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->circleIsShowew:Z
    invoke-static {v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7602(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z

    .line 3197
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->bottomBannerLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RelativeLayout;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3199
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCommandsBAK:Ljava/util/List;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 3200
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 3202
    .local v0, "commSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v0, :cond_8

    .line 3203
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCommandsBAK:Ljava/util/List;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-direct {v11, v9}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;)V

    invoke-interface {v10, v5, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3202
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3207
    :cond_8
    :try_start_0
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getFace_white()I

    move-result v4

    .line 3208
    .local v4, "facewhite":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getFace_small()I

    move-result v3

    .line 3209
    .local v3, "facesmall":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getEye_vivi()I

    move-result v1

    .line 3210
    .local v1, "eyevivi":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getEye_wide()I

    move-result v2

    .line 3212
    .local v2, "eyewide":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "face_white"

    invoke-virtual {v9, v10, v11, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 3213
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "face_small"

    invoke-virtual {v9, v10, v11, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 3214
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "eye_vivi"

    invoke-virtual {v9, v10, v11, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 3215
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "eye_wide"

    invoke-virtual {v9, v10, v11, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3220
    .end local v1    # "eyevivi":I
    .end local v2    # "eyewide":I
    .end local v3    # "facesmall":I
    .end local v4    # "facewhite":I
    :goto_5
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->saveAllEffectBtn:Landroid/widget/ImageButton;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 3221
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->cancleAllEffectBtn:Landroid/widget/ImageButton;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 3222
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionSaveButton:Landroid/widget/ImageButton;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 3223
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionCancleButton:Landroid/widget/ImageButton;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 3225
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f0207c0

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3227
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v9

    if-nez v9, :cond_9

    .line 3228
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 3231
    :cond_9
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup_Land:Landroid/widget/RadioGroup;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v9

    if-nez v9, :cond_a

    .line 3232
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup_Land:Landroid/widget/RadioGroup;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 3234
    :cond_a
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showFaceCircleViewWithAnimation()V
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 3235
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const/4 v10, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showEffectImageViewMask(Z)V
    invoke-static {v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)V

    .line 3236
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 3238
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3239
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 3241
    const-string v9, "WDY:FacePrettyActivity"

    const-string v10, "Touch mShowEffectIgvew \u5f00\u59cb\u52a8\u753b\uff01"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3216
    :catch_0
    move-exception v9

    goto/16 :goto_5
.end method
