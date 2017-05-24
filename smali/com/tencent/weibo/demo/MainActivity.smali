.class public Lcom/tencent/weibo/demo/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private btnOAuthV1:Landroid/widget/Button;

.field private btnOAuthV2ImplicitGrant:Landroid/widget/Button;

.field private listener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "MainActivity.class"

    sput-object v0, Lcom/tencent/weibo/demo/MainActivity;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/tencent/weibo/demo/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/weibo/demo/MainActivity$1;-><init>(Lcom/tencent/weibo/demo/MainActivity;)V

    iput-object v0, p0, Lcom/tencent/weibo/demo/MainActivity;->listener:Landroid/view/View$OnClickListener;

    .line 16
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/weibo/demo/MainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/tencent/weibo/demo/MainActivity;->finish()V

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 38
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/demo/MainActivity;->setContentView(I)V

    .line 28
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/weibo/demo/MainActivity;->btnOAuthV1:Landroid/widget/Button;

    .line 29
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/weibo/demo/MainActivity;->btnOAuthV2ImplicitGrant:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/tencent/weibo/demo/MainActivity;->btnOAuthV1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/weibo/demo/MainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/tencent/weibo/demo/MainActivity;->btnOAuthV2ImplicitGrant:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/weibo/demo/MainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method
