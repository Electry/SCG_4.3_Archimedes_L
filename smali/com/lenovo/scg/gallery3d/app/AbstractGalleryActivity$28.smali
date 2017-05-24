.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->addWeiboLoginView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 3996
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterWeibo()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f100a37

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 4000
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1300(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4001
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;
    invoke-static {v4, v9}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1302(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    .line 4004
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 4005
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4007
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    const v5, 0x7f100a36

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 4008
    .local v2, "rlRightMenuWb":Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_1

    .line 4009
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4010
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1900(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4012
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4013
    const v4, 0x7f100a38

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4030
    :goto_0
    return-void

    .line 4015
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4016
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0401ac

    invoke-virtual {v0, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2    # "rlRightMenuWb":Landroid/widget/RelativeLayout;
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 4017
    .restart local v2    # "rlRightMenuWb":Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 4019
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4020
    .local v1, "lpMenu":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x1

    const v5, 0x7f10065b

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4021
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4022
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4024
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4025
    .local v3, "tvMenuName":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->rightMenuOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2000(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4027
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$28;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRightMenuButton:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1900(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
