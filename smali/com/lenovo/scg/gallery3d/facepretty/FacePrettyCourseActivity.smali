.class public Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;
.super Landroid/app/Activity;
.source "FacePrettyCourseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final RESULT_CONDE:I = 0x2330


# instance fields
.field private goFinish:Landroid/widget/Button;

.field private goStep2:Landroid/widget/Button;

.field private goStep3:Landroid/widget/Button;

.field private goStep4:Landroid/widget/Button;

.field private index:I

.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mCircleLayout:Landroid/widget/LinearLayout;

.field private path:Ljava/lang/String;

.field private rlStep1:Landroid/widget/RelativeLayout;

.field private rlStep2:Landroid/widget/RelativeLayout;

.field private rlStep3:Landroid/widget/RelativeLayout;

.field private rlStep4:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->index:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 113
    :sswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep3:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep4:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 120
    :sswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep3:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep4:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->mCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 129
    :sswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep3:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep4:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 134
    const v1, 0x7f1004c6

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    .local v0, "mTextView":Landroid/widget/TextView;
    const-string v1, "2C2C2C"

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->getColorFromRGB(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 140
    .end local v0    # "mTextView":Landroid/widget/TextView;
    :sswitch_3
    const/16 v1, 0x2330

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->setResult(ILandroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->finish()V

    goto :goto_0

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x7f1004ae -> :sswitch_3
        0x7f1004b3 -> :sswitch_2
        0x7f1004b7 -> :sswitch_1
        0x7f1004bb -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 54
    const v0, 0x7f0400ad

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 58
    const v0, 0x7f1004bf

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->mCircleLayout:Landroid/widget/LinearLayout;

    .line 60
    const v0, 0x7f1004bb

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->goStep2:Landroid/widget/Button;

    .line 61
    const v0, 0x7f1004b7

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->goStep3:Landroid/widget/Button;

    .line 62
    const v0, 0x7f1004b3

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->goStep4:Landroid/widget/Button;

    .line 63
    const v0, 0x7f1004ae

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->goFinish:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->goStep2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->goStep3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->goStep4:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->goFinish:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f1004b8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep1:Landroid/widget/RelativeLayout;

    .line 71
    const v0, 0x7f1004b4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep2:Landroid/widget/RelativeLayout;

    .line 72
    const v0, 0x7f1004af

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep3:Landroid/widget/RelativeLayout;

    .line 73
    const v0, 0x7f1004ab

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep4:Landroid/widget/RelativeLayout;

    .line 75
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->FILTERSTACKINDEX:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->index:I

    .line 76
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PHOTO_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->path:Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->initSCGTypeface(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep1:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep2:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep3:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->rlStep4:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;->mCircleLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 86
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 99
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->exitPictureQualityMode()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->enterPictureQualityMode()V

    .line 93
    return-void
.end method
