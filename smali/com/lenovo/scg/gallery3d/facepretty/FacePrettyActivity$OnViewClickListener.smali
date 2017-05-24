.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;
.super Ljava/lang/Object;
.source "FacePrettyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0

    .prologue
    .line 2655
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private roateViewVithAnimation(Landroid/view/View;Z)V
    .locals 7
    .param p1, "mView"    # Landroid/view/View;
    .param p2, "isRotated"    # Z

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 3059
    const/4 v1, 0x0

    .line 3060
    .local v1, "start":F
    if-eqz p2, :cond_0

    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 3061
    :goto_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 3062
    .local v0, "mAnimation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 3063
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 3064
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3065
    return-void

    .line 3060
    .end local v0    # "mAnimation":Landroid/view/animation/RotateAnimation;
    :cond_0
    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 26
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "face_white"

    invoke-virtual/range {v22 .. v24}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v13

    .line 2662
    .local v13, "facewhite":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "face_small"

    invoke-virtual/range {v22 .. v24}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v12

    .line 2663
    .local v12, "facesmall":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "eye_vivi"

    invoke-virtual/range {v22 .. v24}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v10

    .line 2664
    .local v10, "eyevivi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "eye_wide"

    invoke-virtual/range {v22 .. v24}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v11

    .line 2666
    .local v11, "eyewide":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionSaveButton:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 2668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 2669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showScanViewID:I
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 3056
    :cond_0
    :goto_0
    return-void

    .line 2675
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/graphics/Bitmap;

    move-result-object v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v22

    if-nez v22, :cond_2

    .line 2676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setEffectBitmap(Landroid/graphics/Bitmap;)V

    .line 2679
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const v23, 0x7f1004c0

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 2680
    .local v20, "persentLayout":Landroid/widget/LinearLayout;
    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const v23, 0x7f1004c5

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 2683
    .local v19, "nameLayout":Landroid/widget/LinearLayout;
    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->bottomBannerLayout:Landroid/widget/RelativeLayout;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RelativeLayout;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2686
    const-string v22, "WDY:FacePrettyActivity+onePersionSaveButton"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "selectRectIndex is :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->setFace_white(I)V

    .line 2690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->setFace_small(I)V

    .line 2691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->setEye_vivi(I)V

    .line 2692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->setEye_wide(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2697
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setCircleProgressViewUnSelected()V
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 2699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showEffectImageViewMask(Z)V
    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)V

    .line 2703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisiableEffectButtons()V
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->saveAllEffectBtn:Landroid/widget/ImageButton;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->cancleAllEffectBtn:Landroid/widget/ImageButton;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionCancleButton:Landroid/widget/ImageButton;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enablemShowEffectIgvew()V
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setEffectBitmap(Landroid/graphics/Bitmap;)V

    .line 2714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->doinvalidate()V

    .line 2716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleManual:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->circleIsShowew:Z
    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7602(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z

    .line 2725
    const-string v22, "FACE_PRETTY_SAVE_ONE_BTN"

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    .line 2949
    .end local v19    # "nameLayout":Landroid/widget/LinearLayout;
    .end local v20    # "persentLayout":Landroid/widget/LinearLayout;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->cancleAllEffectBtn:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 2950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v22

    if-eqz v22, :cond_4

    .line 2951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showScanViewID:I
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 2956
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse()Z

    move-result v22

    if-nez v22, :cond_5

    .line 2957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "isHaveReadCourse"

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->hideCourseView()V

    .line 2959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setHaveReadCourse(Z)V

    .line 2962
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->releaseFaceDetecterGenderJudger()V

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setisNeedRotate(Z)V

    .line 2965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFromGoldbox()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 2967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v22

    check-cast v22, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mCurrentImagePath:Ljava/lang/String;

    .line 2970
    :cond_6
    const-string v22, "FACE_PRETTY_CANCLE_ALL_BTN"

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    .line 2972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {v22 .. v24}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setResult(ILandroid/content/Intent;)V

    .line 2974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->finish()V

    goto/16 :goto_0

    .line 2727
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionCancleButton:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 2729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v22

    if-eqz v22, :cond_8

    .line 2730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showScanViewID:I
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 2736
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/graphics/Bitmap;

    move-result-object v22

    if-eqz v22, :cond_9

    .line 2737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 2738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v22

    if-nez v22, :cond_9

    .line 2739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 2740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6302(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2745
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 2747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCommandsBAK:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v7

    .line 2748
    .local v7, "commSize":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    if-ge v15, v7, :cond_a

    .line 2749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v23

    new-instance v24, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCommandsBAK:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v15, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2748
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 2754
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getHaveStoredEffectLevels(I)[I

    move-result-object v9

    .line 2756
    .local v9, "effectleves":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "face_white"

    const/16 v25, 0x2

    aget v25, v9, v25

    invoke-virtual/range {v22 .. v25}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 2757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "face_small"

    const/16 v25, 0x3

    aget v25, v9, v25

    invoke-virtual/range {v22 .. v25}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 2758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "eye_vivi"

    const/16 v25, 0x0

    aget v25, v9, v25

    invoke-virtual/range {v22 .. v25}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 2759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "eye_wide"

    const/16 v25, 0x1

    aget v25, v9, v25

    invoke-virtual/range {v22 .. v25}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2765
    .end local v9    # "effectleves":[I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const v23, 0x7f1004c0

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 2766
    .restart local v20    # "persentLayout":Landroid/widget/LinearLayout;
    const/16 v22, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const v23, 0x7f1004c5

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 2769
    .restart local v19    # "nameLayout":Landroid/widget/LinearLayout;
    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->bottomBannerLayout:Landroid/widget/RelativeLayout;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RelativeLayout;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->circleIsShowew:Z
    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7602(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z

    .line 2773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showEffectImageViewMask(Z)V
    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)V

    .line 2776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setCircleProgressViewUnSelected()V
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 2778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisiableEffectButtons()V
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 2780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->saveAllEffectBtn:Landroid/widget/ImageButton;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 2781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->cancleAllEffectBtn:Landroid/widget/ImageButton;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 2782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionCancleButton:Landroid/widget/ImageButton;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 2783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enablemShowEffectIgvew()V
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 2784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 2786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleManual:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->circleIsShowew:Z
    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7602(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z

    .line 2795
    sget-boolean v22, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v22, :cond_b

    .line 2796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->setCommand(Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;)V

    .line 2798
    :cond_b
    const-string v22, "FACE_PRETTY_CANCLE_ONE_BTN"

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2800
    .end local v7    # "commSize":I
    .end local v15    # "i":I
    .end local v19    # "nameLayout":Landroid/widget/LinearLayout;
    .end local v20    # "persentLayout":Landroid/widget/LinearLayout;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$7500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 2802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v22

    if-eqz v22, :cond_d

    .line 2803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showScanViewID:I
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 2808
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse()Z

    move-result v22

    if-nez v22, :cond_e

    .line 2809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "isHaveReadCourse"

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->hideCourseView()V

    .line 2811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setHaveReadCourse(Z)V

    .line 2815
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getScreenOrientation()Z

    move-result v22

    if-nez v22, :cond_11

    .line 2816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBeforeAfterLayt:Landroid/widget/RelativeLayout;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RelativeLayout;

    move-result-object v22

    const/high16 v23, 0x42b40000    # 90.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 2818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setisNeedRotate(Z)V

    .line 2819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->doinvalidate()V

    .line 2848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getScreenOrientation()Z

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->roateViewVithAnimation(Landroid/view/View;Z)V

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v22

    if-nez v22, :cond_f

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    const v23, 0x7f0207bf

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z
    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9302(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z

    .line 2895
    :cond_f
    :goto_5
    const-string v22, "FACE_PRETTY_ROTATE_BTN"

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2856
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    const v23, 0x7f0207c0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z
    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9302(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z

    goto :goto_5

    .line 2861
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBeforeAfterLayt:Landroid/widget/RelativeLayout;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RelativeLayout;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 2863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setisNeedRotate(Z)V

    .line 2864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->doinvalidate()V

    .line 2892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getScreenOrientation()Z

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->roateViewVithAnimation(Landroid/view/View;Z)V

    goto :goto_5

    .line 2896
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 2897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v22

    if-eqz v22, :cond_13

    .line 2898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showScanViewID:I
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 2903
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 2904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    const v23, 0x7f0207bf

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z
    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9302(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z

    .line 2911
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 2915
    const-string v22, "FACE_PRETTY_CHANGE_GENDER_RADIOBTN"

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    .line 2917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getScreenOrientation()Z

    move-result v22

    if-eqz v22, :cond_14

    .line 2918
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v22

    if-eqz v22, :cond_15

    .line 2919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_15

    .line 2920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton:Landroid/widget/RadioButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d00dc

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton:Landroid/widget/RadioButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d00dc

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 2924
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    .line 2925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 2929
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 2930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton:Landroid/widget/RadioButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 2931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton:Landroid/widget/RadioButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RadioButton;->setClickable(Z)V

    goto/16 :goto_0

    .line 2907
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    const v23, 0x7f0207c0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z
    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9302(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z

    goto/16 :goto_6

    .line 2927
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_7

    .line 2975
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->saveAllEffectBtn:Landroid/widget/ImageButton;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v22

    if-eqz v22, :cond_19

    .line 2978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showScanViewID:I
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$6500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 2983
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse()Z

    move-result v22

    if-nez v22, :cond_1a

    .line 2984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string v23, "isHaveReadCourse"

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->hideCourseView()V

    .line 2986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setHaveReadCourse(Z)V

    .line 2989
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setisNeedRotate(Z)V

    .line 2990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mExecCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;

    move-result-object v22

    if-nez v22, :cond_1b

    .line 2991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    new-instance v23, Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v24, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;
    invoke-static/range {v24 .. v24}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;-><init>(Ljava/util/List;)V

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mExecCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;
    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9402(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;)Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;

    .line 2994
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFromGoldbox()Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 2995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2996
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener$1;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;)V

    .line 3003
    .local v6, "callback":Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;
    if-eqz v4, :cond_1c

    .line 3004
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static {}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->getAvailableSpace()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-ltz v22, :cond_1e

    .line 3016
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "callback":Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;
    :cond_1c
    :goto_8
    const/16 v16, 0x0

    .line 3018
    .local v16, "mFilterStack":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFilterStackIndex:I
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I

    move-result v23

    invoke-interface/range {v22 .. v23}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getFilterStack(I)Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v16

    .line 3023
    :goto_9
    if-eqz v16, :cond_1d

    .line 3024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mExecCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->addCommand(Lcom/lenovo/scg/gallery3d/edit/Command;Landroid/graphics/Bitmap;)V

    .line 3028
    :cond_1d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-result-object v22

    check-cast v22, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mCurrentImagePath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 3029
    .local v17, "mOriginalBitmapPath":Ljava/lang/String;
    const-string v22, "mOriginalBitmapPath"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3033
    const-string v22, "mOriginalBitmapPath"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3036
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 3037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {v22 .. v24}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3052
    :goto_a
    const-string v22, "FACE_PRETTY_SAVE_ALL_BTN"

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    .line 3053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->finish()V

    goto/16 :goto_0

    .line 3007
    .end local v14    # "file":Ljava/io/File;
    .end local v16    # "mFilterStack":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    .end local v17    # "mOriginalBitmapPath":Ljava/lang/String;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "callback":Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;
    :cond_1e
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    .line 3008
    .local v5, "bitmapBytes":[B
    const-string v22, "beauty"

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->saveImage([BLjava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 3009
    .local v18, "mSavedFile":Ljava/io/File;
    new-instance v21, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;Ljava/io/File;)V

    .line 3010
    .local v21, "saveCopyTask":Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v4, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_8

    .line 3039
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapBytes":[B
    .end local v6    # "callback":Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;
    .end local v18    # "mSavedFile":Ljava/io/File;
    .end local v21    # "saveCopyTask":Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v16    # "mFilterStack":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    .restart local v17    # "mOriginalBitmapPath":Ljava/lang/String;
    :cond_1f
    if-eqz v17, :cond_20

    :try_start_4
    const-string v22, "content"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 3040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {v22 .. v24}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_a

    .line 3047
    .end local v14    # "file":Ljava/io/File;
    .end local v17    # "mOriginalBitmapPath":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 3048
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showOriginalImageIsDeletedDialog()V
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 3049
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3043
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v17    # "mOriginalBitmapPath":Ljava/lang/String;
    :cond_20
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    move-object/from16 v22, v0

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showOriginalImageIsDeletedDialog()V
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$9500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 3019
    .end local v14    # "file":Ljava/io/File;
    .end local v17    # "mOriginalBitmapPath":Ljava/lang/String;
    :catch_1
    move-exception v22

    goto/16 :goto_9

    .line 2761
    .end local v16    # "mFilterStack":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    .restart local v7    # "commSize":I
    .restart local v15    # "i":I
    :catch_2
    move-exception v22

    goto/16 :goto_4

    .line 2693
    .end local v7    # "commSize":I
    .end local v15    # "i":I
    .restart local v19    # "nameLayout":Landroid/widget/LinearLayout;
    .restart local v20    # "persentLayout":Landroid/widget/LinearLayout;
    :catch_3
    move-exception v22

    goto/16 :goto_1
.end method
