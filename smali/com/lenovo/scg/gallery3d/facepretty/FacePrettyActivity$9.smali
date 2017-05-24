.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;
.super Lcom/lenovo/scg/gallery3d/facepretty/views/OnCircleProgressViewClickListener;
.source "FacePrettyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->initFeilds()V
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
    .line 3325
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/OnCircleProgressViewClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleProgressViewClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v7, 0x41200000    # 10.0f

    .line 3330
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "face_white"

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v3

    .line 3331
    .local v3, "facewhite":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "face_small"

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v2

    .line 3332
    .local v2, "facesmall":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "eye_vivi"

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    .line 3333
    .local v0, "eyevivi":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "eye_wide"

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v1

    .line 3335
    .local v1, "eyewide":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3459
    :goto_0
    return-void

    .line 3338
    :pswitch_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const-string v5, "face_white"

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setSelectWhat(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Ljava/lang/String;)V

    .line 3346
    sget-boolean v4, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v4, :cond_0

    .line 3348
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getMlSkinBrightLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3349
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getMlSkinBrightLevel()I

    move-result v5

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updatePersent(I)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)V

    .line 3355
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 3356
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3359
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v5

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonPressed(Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V

    .line 3361
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3362
    const-string v4, "FACE_PRETTY_WHITE_BTN"

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 3351
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    int-to-float v5, v3

    div-float/2addr v5, v8

    mul-float/2addr v5, v7

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3352
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    int-to-float v5, v3

    div-float/2addr v5, v8

    mul-float/2addr v5, v7

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v5

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updatePersent(I)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)V

    goto :goto_1

    .line 3368
    :pswitch_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const-string v5, "eye_vivi"

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setSelectWhat(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Ljava/lang/String;)V

    .line 3376
    sget-boolean v4, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v4, :cond_1

    .line 3378
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSkinSoftenLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3379
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSkinSoftenLevel()I

    move-result v5

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updatePersent(I)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)V

    .line 3385
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 3386
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3389
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v5

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonPressed(Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V

    .line 3391
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3393
    const-string v4, "FACE_PRETTY_SKIN_SOFT_BTN"

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3381
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    int-to-float v5, v0

    div-float/2addr v5, v8

    mul-float/2addr v5, v7

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3382
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    int-to-float v5, v0

    div-float/2addr v5, v8

    mul-float/2addr v5, v7

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v5

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updatePersent(I)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)V

    goto :goto_2

    .line 3398
    :pswitch_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const-string v5, "eye_wide"

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setSelectWhat(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Ljava/lang/String;)V

    .line 3407
    sget-boolean v4, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v4, :cond_2

    .line 3409
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmEyeEnlargmentLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3410
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmEyeEnlargmentLevel()I

    move-result v5

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updatePersent(I)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)V

    .line 3416
    :goto_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 3417
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3420
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v5

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonPressed(Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V

    .line 3422
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3424
    const-string v4, "FACE_PRETTY_ENLARGE_EYE_BTN"

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3412
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    int-to-float v5, v1

    div-float/2addr v5, v8

    mul-float/2addr v5, v7

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3413
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    int-to-float v5, v1

    div-float/2addr v5, v8

    mul-float/2addr v5, v7

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v5

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updatePersent(I)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)V

    goto :goto_3

    .line 3429
    :pswitch_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const-string v5, "face_small"

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setSelectWhat(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Ljava/lang/String;)V

    .line 3436
    sget-boolean v4, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v4, :cond_3

    .line 3438
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSlenderFaceLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3439
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSlenderFaceLevel()I

    move-result v5

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updatePersent(I)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)V

    .line 3445
    :goto_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 3446
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3449
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$5600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    move-result-object v5

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonPressed(Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V

    .line 3451
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3453
    const-string v4, "FACE_PRETTY_SMALL_FACE_BTN"

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3441
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    int-to-float v5, v2

    div-float/2addr v5, v8

    mul-float/2addr v5, v7

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3442
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    int-to-float v5, v2

    div-float/2addr v5, v8

    mul-float/2addr v5, v7

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v5

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updatePersent(I)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$10100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)V

    goto :goto_4

    .line 3335
    :pswitch_data_0
    .packed-switch 0x7f100890
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
