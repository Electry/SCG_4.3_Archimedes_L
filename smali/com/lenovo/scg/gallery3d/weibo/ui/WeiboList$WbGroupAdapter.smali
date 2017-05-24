.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "WeiboList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WbGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 3221
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3218
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->mContext:Landroid/content/Context;

    .line 3219
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->mGroups:Ljava/util/ArrayList;

    .line 3222
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->mContext:Landroid/content/Context;

    .line 3223
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 3232
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->mGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3233
    const/4 v0, 0x0

    .line 3235
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3247
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 3253
    const/4 v0, 0x0

    .line 3254
    .local v0, "holder":Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 3255
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;
    invoke-direct {v0, p0, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V

    .line 3256
    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3257
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0401a7

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3258
    const v4, 0x7f100a29

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 3260
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p2

    .line 3261
    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 3266
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;

    .line 3268
    .local v2, "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3270
    .local v3, "sInfo":Ljava/lang/String;
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3271
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 3272
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    const v5, -0xff6c30

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3279
    :goto_1
    return-object p2

    .line 3264
    .end local v2    # "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    .end local v3    # "sInfo":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;
    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;
    goto :goto_0

    .line 3274
    .restart local v2    # "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    .restart local v3    # "sInfo":Ljava/lang/String;
    :cond_1
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public setGroupItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3226
    .local p1, "arrGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;->mGroups:Ljava/util/ArrayList;

    .line 3227
    return-void
.end method
