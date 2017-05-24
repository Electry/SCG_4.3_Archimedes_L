.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;
.super Landroid/os/Handler;
.source "FacePrettyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->initHandler()V
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
    .line 1587
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1593
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 1594
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1600
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1601
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    sparse-switch v16, :sswitch_data_0

    .line 1839
    :cond_0
    :goto_0
    return-void

    .line 1603
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f0f0855

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ProgressBar;

    move-result-object v17

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->dismissLoadingProgressBar(Landroid/widget/ProgressBar;)V
    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/widget/ProgressBar;)V

    goto :goto_0

    .line 1609
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setFaceRectOnscreen()V
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_0

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->initEffectEngine()V

    goto :goto_0

    .line 1617
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startMarqueeForJudgeGender(Z)V
    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ProgressBar;

    move-result-object v17

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->dismissLoadingProgressBar(Landroid/widget/ProgressBar;)V
    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/widget/ProgressBar;)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-gtz v16, :cond_2

    .line 1621
    :cond_1
    const-string v16, "WDY:FacePrettyActivity"

    const-string/jumbo v17, "relativeRects is null "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showNotFoundFaceDialog()V
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    goto/16 :goto_0

    .line 1626
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_3

    .line 1628
    sget-object v16, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    const v17, -0xffffeff

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1633
    :cond_3
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isShowing:Z
    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5002(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z

    goto/16 :goto_0

    .line 1638
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RelativeLayout;

    move-result-object v16

    const/16 v17, 0xfa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/LinearLayout;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ViewAnimUtils;->startAnimForEffectSelectBtn(Landroid/view/ViewGroup;ILandroid/widget/LinearLayout;)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    const v17, 0x7f10088f

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 1640
    .local v12, "mLayout":Landroid/widget/LinearLayout;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setCircleProgressViewVisibility(Z[Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    const v17, 0x7f1004c0

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1645
    .local v14, "persentLayout":Landroid/widget/LinearLayout;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    const v17, 0x7f1004c5

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 1648
    .local v13, "nameLayout":Landroid/widget/LinearLayout;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "face_white"

    invoke-virtual/range {v16 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v10

    .line 1651
    .local v10, "facewhite":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "face_small"

    invoke-virtual/range {v16 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v9

    .line 1652
    .local v9, "facesmall":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "eye_vivi"

    invoke-virtual/range {v16 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v6

    .line 1653
    .local v6, "eyevivi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "eye_wide"

    invoke-virtual/range {v16 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v7

    .line 1656
    .local v7, "eyewide":I
    sget-boolean v16, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v16, :cond_4

    .line 1659
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmEyeEnlargmentLevel()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setProgress2ArcSoft(I)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSkinSoftenLevel()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setProgress2ArcSoft(I)V

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getMlSkinBrightLevel()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setProgress2ArcSoft(I)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSlenderFaceLevel()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setProgress2ArcSoft(I)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0f0892

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSkinSoftenLevel()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    const v19, 0x7f0f0895

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmEyeEnlargmentLevel()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    const v19, 0x7f0f0893

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSlenderFaceLevel()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    const v19, 0x7f0f0894

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getMlSkinBrightLevel()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1677
    :catch_0
    move-exception v16

    goto/16 :goto_0

    .line 1682
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setProgressViaEffectParam(I)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setProgressViaEffectParam(I)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setProgressViaEffectParam(I)V

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setProgressViaEffectParam(I)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0f0892

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v6

    move/from16 v22, v0

    const/high16 v23, 0x41400000    # 12.0f

    div-float v22, v22, v23

    const/high16 v23, 0x41200000    # 10.0f

    mul-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    const v19, 0x7f0f0895

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v7

    move/from16 v22, v0

    const/high16 v23, 0x41400000    # 12.0f

    div-float v22, v22, v23

    const/high16 v23, 0x41200000    # 10.0f

    mul-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    const v19, 0x7f0f0893

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v9

    move/from16 v22, v0

    const/high16 v23, 0x41400000    # 12.0f

    div-float v22, v22, v23

    const/high16 v23, 0x41200000    # 10.0f

    mul-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    const v19, 0x7f0f0894

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v10

    move/from16 v22, v0

    const/high16 v23, 0x41400000    # 12.0f

    div-float v22, v22, v23

    const/high16 v23, 0x41200000    # 10.0f

    mul-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1707
    .end local v6    # "eyevivi":I
    .end local v7    # "eyewide":I
    .end local v9    # "facesmall":I
    .end local v10    # "facewhite":I
    .end local v12    # "mLayout":Landroid/widget/LinearLayout;
    .end local v13    # "nameLayout":Landroid/widget/LinearLayout;
    .end local v14    # "persentLayout":Landroid/widget/LinearLayout;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->setFaceBitmap(Landroid/graphics/Bitmap;)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v16

    if-nez v16, :cond_5

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;
    invoke-static/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceEffectBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->setFaceEffectBitmap(Landroid/graphics/Bitmap;)V

    .line 1714
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->doinvalidate()V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ProgressBar;

    move-result-object v17

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->dismissLoadingProgressBar(Landroid/widget/ProgressBar;)V
    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/widget/ProgressBar;)V

    goto/16 :goto_0

    .line 1711
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceEffectBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->setFaceEffectBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1722
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ProgressBar;

    move-result-object v17

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showLoadingProgressBar(Landroid/widget/ProgressBar;)V
    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/widget/ProgressBar;)V

    goto/16 :goto_0

    .line 1728
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ProgressBar;

    move-result-object v17

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->dismissLoadingProgressBar(Landroid/widget/ProgressBar;)V
    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/widget/ProgressBar;)V

    goto/16 :goto_0

    .line 1733
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ProgressBar;

    move-result-object v17

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->dismissLoadingProgressBar(Landroid/widget/ProgressBar;)V
    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/widget/ProgressBar;)V

    .line 1734
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 1735
    .local v8, "faceid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showScanViewID:I
    invoke-static {v0, v8}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6502(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)I

    .line 1737
    const-string v16, "WDY:FacePrettyActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "FacePrettyActivity:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const/4 v4, 0x0

    .line 1741
    .local v4, "animStartX":I
    const/4 v5, 0x0

    .line 1743
    .local v5, "animStartY":I
    const/4 v2, 0x0

    .line 1744
    .local v2, "animScallX":F
    const/4 v3, 0x0

    .line 1745
    .local v3, "animScallY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getScreenOrientation()Z

    move-result v16

    if-nez v16, :cond_7

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v16

    aget-object v16, v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getScreenWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    sub-int v4, v16, v17

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v16

    aget-object v16, v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topBannerHeight:I
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v17

    add-int v5, v16, v17

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v16

    aget-object v16, v16, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v2, v16, v17

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v16

    aget-object v16, v16, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v3, v16, v17

    .line 1771
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartX:I
    invoke-static {v0, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6902(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)I

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartY:I
    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7002(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)I

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartX:F
    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7102(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;F)F

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartY:F
    invoke-static {v0, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7202(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;F)F

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getScreenOrientation()Z

    move-result v16

    if-nez v16, :cond_9

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->setIsPort(Z)V

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartX:F
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartY:F
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartX:I
    invoke-static/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v20, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartY:I
    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v20

    invoke-static/range {v16 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ViewAnimUtils;->startAnimationSet4CircleView(Landroid/view/View;FFII)V

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->setFaceBitmap(Landroid/graphics/Bitmap;)V

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceEffectBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->setFaceEffectBitmap(Landroid/graphics/Bitmap;)V

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->doinvalidate()V

    .line 1783
    if-nez v8, :cond_6

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showEffectImageViewMask(Z)V
    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)V

    .line 1788
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->doinvalidate()V

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1754
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v15, v0, [Landroid/graphics/Rect;

    .line 1755
    .local v15, "tmpRects":[Landroid/graphics/Rect;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v11, v0, :cond_8

    .line 1756
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v17

    aget-object v17, v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v18

    aget-object v18, v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v19, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v19

    aget-object v19, v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v20, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v20

    aget-object v20, v20, v11

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v16, v15, v11

    .line 1755
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1763
    :cond_8
    aget-object v16, v15, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getScreenWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    sub-int v4, v16, v17

    .line 1764
    aget-object v16, v15, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topBannerHeight:I
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v17

    add-int v5, v16, v17

    .line 1767
    aget-object v16, v15, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v3, v16, v17

    .line 1768
    aget-object v16, v15, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v2, v16, v17

    goto/16 :goto_2

    .line 1776
    .end local v11    # "i":I
    .end local v15    # "tmpRects":[Landroid/graphics/Rect;
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1795
    .end local v2    # "animScallX":F
    .end local v3    # "animScallY":F
    .end local v4    # "animStartX":I
    .end local v5    # "animStartY":I
    .end local v8    # "faceid":I
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setCanClick(Z)V

    .line 1798
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showScanViewID:I
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->circleIsShowew:Z
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showEffectImageViewMask(Z)V
    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)V

    .line 1803
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->doinvalidate()V

    goto/16 :goto_0

    .line 1809
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v16

    const v17, 0x7f0f0871

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1813
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ProgressBar;

    move-result-object v17

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->dismissLoadingProgressBar(Landroid/widget/ProgressBar;)V
    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/widget/ProgressBar;)V

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v16

    const v17, 0x7f0f0872

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showNotFoundFaceDialog()V
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    goto/16 :goto_0

    .line 1820
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showScanViewID:I
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1828
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v16

    const v17, 0x7f0f0873

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1832
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1601
    :sswitch_data_0
    .sparse-switch
        -0x10000000 -> :sswitch_2
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_8
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x9 -> :sswitch_c
        0xa -> :sswitch_d
        0xb -> :sswitch_e
        0xc -> :sswitch_7
        0xd -> :sswitch_f
        0xe -> :sswitch_9
        0xf -> :sswitch_0
    .end sparse-switch
.end method
