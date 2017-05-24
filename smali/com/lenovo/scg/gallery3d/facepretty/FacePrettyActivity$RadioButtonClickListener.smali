.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;
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
    name = "RadioButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1199
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1200
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup_Land:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1202
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f0207c0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1204
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v1

    array-length v1, v1

    if-ge v1, v5, :cond_1

    .line 1205
    :cond_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1272
    :goto_0
    return-void

    .line 1209
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1210
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isHaveReadCourse"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1211
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->hideCourseView()V

    .line 1212
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setHaveReadCourse(Z)V

    .line 1215
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1217
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton_Land:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 1219
    :cond_3
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v1, :cond_4

    .line 1220
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/facepretty/data/ManFacePrettyParam;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/facepretty/data/ManFacePrettyParam;-><init>()V

    invoke-virtual {v1, v4, v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->setFlassLessParamByFaceID(ILcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;)V

    .line 1223
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setCanClick(Z)V

    .line 1225
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v2, v5, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 1226
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v2, v6, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v4, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 1228
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v1, :cond_5

    .line 1229
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget-object v2, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_MAN_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startDoOneFaceEffectArcSoftThread(Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;)V

    .line 1233
    :goto_1
    const-string v1, "FACE_PRETTY_GENDER_MAN_RADIOBTN"

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1231
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget-object v1, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->man_prarm:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startDoOneFaceEffectThread([I)V
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;[I)V

    goto :goto_1

    .line 1235
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton_Land:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    if-ne p1, v1, :cond_a

    .line 1236
    :cond_7
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v1, :cond_8

    .line 1237
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/facepretty/data/WomanFacePrettyParam;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/facepretty/data/WomanFacePrettyParam;-><init>()V

    invoke-virtual {v1, v4, v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->setFlassLessParamByFaceID(ILcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;)V

    .line 1240
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setCanClick(Z)V

    .line 1242
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v2, v5, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 1243
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v2, v6, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v4, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 1245
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v1, :cond_9

    .line 1246
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget-object v2, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_WOMAN_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startDoOneFaceEffectArcSoftThread(Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;)V

    .line 1250
    :goto_2
    const-string v1, "FACE_PRETTY_GENDER_WOMAN_RADIOBTN"

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1248
    :cond_9
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget-object v1, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->woman_prarm:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startDoOneFaceEffectThread([I)V
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;[I)V

    goto :goto_2

    .line 1254
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->faceRectsOnScreen:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 1255
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v1, :cond_b

    .line 1256
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/facepretty/data/OtherFacePrettyParam;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/facepretty/data/OtherFacePrettyParam;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->setFlassLessParamByFaceID(ILcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;)V

    .line 1254
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1260
    :cond_c
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setCanClick(Z)V

    .line 1262
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v2, v5, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 1263
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    new-array v2, v6, [Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v4, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 1264
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v1, :cond_d

    .line 1265
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget-object v2, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->ARCSOFT_OTHER_PARAM:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startDoOneFaceEffectArcSoftThread(Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;)V

    .line 1269
    :goto_4
    const-string v1, "FACE_PRETTY_GENDER_OTHER_RADIOBTN"

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/analytics/AnalyticsTrackerUtil;->FacePrettyTraceEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1267
    :cond_d
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    sget-object v1, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->other_prarm:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startDoOneFaceEffectThread([I)V
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$4200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;[I)V

    goto :goto_4
.end method
