.class public Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;
.super Landroid/app/Activity;
.source "RequestPicsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BoxControlActivity"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mRequestMultiBtn:Landroid/widget/Button;

.field private mRequestSingleBtn:Landroid/widget/Button;

.field private mSinglePicUri:Ljava/lang/String;

.field private mTextViewUirs:Landroid/widget/TextView;

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mRequestSingleBtn:Landroid/widget/Button;

    .line 20
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mRequestMultiBtn:Landroid/widget/Button;

    .line 22
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mTextViewUirs:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mSinglePicUri:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mIntent:Landroid/content/Intent;

    .line 28
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mUriList:Ljava/util/ArrayList;

    return-void
.end method

.method private ResponsedViewEvents()V
    .locals 4

    .prologue
    .line 52
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mRequestSingleBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mRequestMultiBtn:Landroid/widget/Button;

    new-instance v2, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity$2;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mSinglePicUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mTextViewUirs:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mSinglePicUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mTextViewUirs:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const-string v2, "BoxControlActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUriList.get(i) = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->requestSinglePic()V

    return-void
.end method

.method private findViewsIdByXmls()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f100135

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mRequestSingleBtn:Landroid/widget/Button;

    .line 47
    const v0, 0x7f100136

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mRequestMultiBtn:Landroid/widget/Button;

    .line 48
    const v0, 0x7f100137

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mTextViewUirs:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method private requestSinglePic()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, "requestIntent":Landroid/content/Intent;
    const-class v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 93
    const-string v1, "android.boxcontrol.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string/jumbo v1, "request_pics_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->finish()V

    .line 98
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mIntent:Landroid/content/Intent;

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "return_single_pic_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mSinglePicUri:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "return_multi_pics_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->mUriList:Ljava/util/ArrayList;

    .line 41
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->findViewsIdByXmls()V

    .line 42
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->ResponsedViewEvents()V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 113
    return-void
.end method

.method protected requestMultiPics()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, "requestIntent":Landroid/content/Intent;
    const-class v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    const-string v1, "android.boxcontrol.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "request_pics_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->finish()V

    .line 88
    return-void
.end method
