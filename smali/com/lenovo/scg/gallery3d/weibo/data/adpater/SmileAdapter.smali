.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field mSmileStrings:[Ljava/lang/String;

.field smile_id:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x37

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "[\u7231\u4f60]"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "[\u82b1\u5fc3]"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "[\u7761\u89c9]"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "[\u5965\u7279\u66fc]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "[\u53ef\u7231]"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "[\u601d\u8003]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "[\u62dc\u62dc]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "[\u53ef\u601c]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "[\u592a\u5f00\u5fc3]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "[\u60b2\u4f24]"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "[\u56f0]"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "[\u5077\u7b11]"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "[\u9119\u89c6]"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "[\u54ed]"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "[\u5410]"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "[\u95ed\u5634]"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "[\u61d2\u5f97\u7406\u4f60]"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "[\u5154\u5b50]"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "[\u998b\u5634]"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "[\u6cea]"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "[\u6316\u9f3b\u5c4e]"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "[\u5403\u60ca]"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "[\u7537\u5b69\u513f]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "[\u59d4\u5c48]"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "[\u6253\u54c8\u6b20]"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "[\u6012\u9a82]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "[\u718a\u732b]"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "[\u9876]"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "[\u6012]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "[\u563b\u563b]"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "[\u6124\u6012]"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "[\u5973\u5b69\u513f]"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "[\u5618]"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "[\u611f\u5192]"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "[\u94b1]"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "[\u9634\u9669]"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "[\u9f13\u638c]"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "[\u4eb2\u4eb2]"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "[\u7591\u95ee]"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "[\u54c8\u54c8]"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "[\u53f3\u54fc\u54fc]"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "[\u5bb3\u7f9e]"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "[\u6655]"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "[\u6c57]"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "[\u751f\u75c5]"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "[\u6293\u72c2]"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "[\u5475\u5475]"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "[\u5931\u671b]"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "[\u732a\u5934]"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "[\u9ed1\u7ebf]"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "[\u8870]"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "[\u505a\u9b3c\u8138]"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "[\u54fc]"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "[\u4e66\u5446\u5b50]"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "[\u5de6\u54fc\u54fc]"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;->mSmileStrings:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;->smile_id:[I

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x7f02050a
        0x7f02051d
        0x7f02052e
        0x7f02050b
        0x7f02051e
        0x7f02052f
        0x7f02050c
        0x7f02051f
        0x7f020530
        0x7f02050d
        0x7f020521
        0x7f020531
        0x7f02050e
        0x7f020520
        0x7f020532
        0x7f02050f
        0x7f020522
        0x7f020533
        0x7f020510
        0x7f020523
        0x7f020534
        0x7f020511
        0x7f020524
        0x7f020535
        0x7f020512
        0x7f020526
        0x7f020536
        0x7f020513
        0x7f020525
        0x7f020537
        0x7f020514
        0x7f020527
        0x7f020538
        0x7f020515
        0x7f020528
        0x7f020539
        0x7f020516
        0x7f020529
        0x7f02053a
        0x7f020517
        0x7f02053b
        0x7f020518
        0x7f02053c
        0x7f020519
        0x7f02052a
        0x7f02053d
        0x7f02051a
        0x7f02052b
        0x7f02053e
        0x7f02051b
        0x7f02052c
        0x7f02053f
        0x7f02051c
        0x7f02052d
        0x7f020540
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;->smile_id:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSmile(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;->mSmileStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 86
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;)V

    .line 88
    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter$ViewHolder;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401c2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 89
    const v1, 0x7f100ad5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter$ViewHolder;->smile:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :goto_0
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter$ViewHolder;->smile:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;->smile_id:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    return-object p2

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter$ViewHolder;
    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter$ViewHolder;
    goto :goto_0
.end method
