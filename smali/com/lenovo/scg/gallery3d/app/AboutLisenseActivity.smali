.class public Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;
.super Landroid/app/Activity;
.source "AboutLisenseActivity.java"


# instance fields
.field private mButton:Landroid/widget/ImageView;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLeCSC:Landroid/widget/TextView;

.field private mLeImage:Landroid/widget/TextView;

.field private mLeSCfTextView:Landroid/widget/TextView;

.field private mLegaVersionTV:Landroid/widget/TextView;

.field private poweredTextView:Landroid/widget/TextView;

.field private specialThanksTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->requestWindowFeature(I)Z

    .line 41
    const v2, 0x7f040008

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->setContentView(I)V

    .line 42
    const v2, 0x7f0f0866

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->setTitle(I)V

    .line 44
    const v2, 0x7f100068

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 45
    const v2, 0x7f10006e

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mLegaVersionTV:Landroid/widget/TextView;

    .line 46
    const v2, 0x7f100071

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mLeSCfTextView:Landroid/widget/TextView;

    .line 48
    const v2, 0x7f10006f

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mLeImage:Landroid/widget/TextView;

    .line 49
    const v2, 0x7f100070

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mLeCSC:Landroid/widget/TextView;

    .line 51
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mLeSCfTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    const v2, 0x7f10006d

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->poweredTextView:Landroid/widget/TextView;

    .line 53
    const v2, 0x7f100073

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->specialThanksTextView:Landroid/widget/TextView;

    .line 54
    const v2, 0x7f10006a

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mButton:Landroid/widget/ImageView;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f089e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "powerHtml":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f08a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "specialHtml":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->poweredTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->specialThanksTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->initSCGTypeface(Landroid/content/Context;)V

    .line 62
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 64
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getLeGAVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mLegaVersionTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f089f

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getLeGAVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mLeImage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f08a0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getLeImageVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mLeCSC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f08a1

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getLeCSCVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity$1;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;->mLegaVersionTV:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 87
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->exitPictureQualityMode()V

    .line 88
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->enterPictureQualityMode()V

    .line 96
    return-void
.end method
