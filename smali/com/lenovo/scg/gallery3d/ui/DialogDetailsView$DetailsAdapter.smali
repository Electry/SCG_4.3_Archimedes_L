.class Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogDetailsView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;
.implements Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$ResolutionResolvingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsAdapter"
.end annotation


# instance fields
.field private mHeightIndex:I

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationIndex:I

.field private mWidthIndex:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;Lcom/lenovo/scg/gallery3d/data/MediaDetails;)V
    .locals 4
    .param p2, "details"    # Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    .prologue
    const/4 v3, -0x1

    .line 145
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 141
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mWidthIndex:I

    .line 143
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mHeightIndex:I

    .line 146
    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$200(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    .line 148
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mLocationIndex:I

    .line 149
    invoke-direct {p0, v0, p2}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->setDetails(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/data/MediaDetails;)V

    .line 150
    return-void
.end method

.method private setDetails(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/data/MediaDetails;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "details"    # Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    .prologue
    .line 153
    const/4 v9, 0x1

    .line 154
    .local v9, "resolutionIsValid":Z
    const/4 v8, 0x0

    .line 155
    .local v8, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 156
    .local v2, "detail":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v12, 0x0

    .line 158
    .local v12, "value":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 159
    .local v6, "key":I
    const-string v14, "DialogDetailsView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "key = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 223
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 230
    .local v13, "valueObj":Ljava/lang/Object;
    if-eqz v13, :cond_6

    .line 231
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 239
    .end local v13    # "valueObj":Ljava/lang/Object;
    :cond_1
    :goto_2
    if-eqz v12, :cond_2

    .line 242
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->hasUnit(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 243
    const-string v14, "%s: %s %s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v12, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->getUnit(I)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 251
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_2
    if-nez v9, :cond_0

    .line 254
    move-object/from16 v0, p0

    invoke-static {v8, v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->resolveResolution(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$ResolutionResolvingListener;)V

    goto/16 :goto_0

    .line 163
    :sswitch_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [D

    move-object v7, v14

    check-cast v7, [D

    .line 164
    .local v7, "latlng":[D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mLocationIndex:I

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v14}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$200(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v14, v7, v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->resolveAddress(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;[DLcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object v12

    .line 166
    goto :goto_2

    .line 169
    .end local v7    # "latlng":[D
    :sswitch_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 170
    goto :goto_2

    .line 173
    :sswitch_2
    const-string v14, "1"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const v14, 0x7f0f06a3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 174
    :goto_4
    goto/16 :goto_2

    .line 173
    :cond_3
    const v14, 0x7f0f06a4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 177
    :sswitch_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/MediaDetails$FlashState;

    .line 180
    .local v3, "flash":Lcom/lenovo/scg/gallery3d/data/MediaDetails$FlashState;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaDetails$FlashState;->isFlashFired()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 181
    const v14, 0x7f0f06a5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 183
    :cond_4
    const v14, 0x7f0f06a6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 185
    goto/16 :goto_2

    .line 188
    .end local v3    # "flash":Lcom/lenovo/scg/gallery3d/data/MediaDetails$FlashState;
    :sswitch_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "value":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 189
    .restart local v12    # "value":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 190
    .local v10, "time":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v10, v14

    if-gez v14, :cond_5

    .line 191
    const-string v14, "1/%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v20, v20, v10

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 193
    :cond_5
    double-to-int v5, v10

    .line 194
    .local v5, "integer":I
    int-to-double v14, v5

    sub-double/2addr v10, v14

    .line 195
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 196
    const-wide v14, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v14, v10, v14

    if-lez v14, :cond_1

    .line 197
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " 1/%d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v20, v20, v10

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 203
    .end local v5    # "integer":I
    .end local v10    # "time":D
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mWidthIndex:I

    .line 204
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 205
    const-string v14, "0"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 206
    const v14, 0x7f0f04ad

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 207
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 211
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mHeightIndex:I

    .line 212
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 213
    const-string v14, "0"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 214
    const v14, 0x7f0f04ad

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 215
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 221
    :sswitch_7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 233
    .restart local v13    # "valueObj":Ljava/lang/Object;
    :cond_6
    const-string v15, "DialogDetailsView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "\'s value is Null"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 247
    .end local v13    # "valueObj":Ljava/lang/Object;
    :cond_7
    const-string v14, "%s: %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 257
    .end local v2    # "detail":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v6    # "key":I
    .end local v12    # "value":Ljava/lang/String;
    :cond_8
    return-void

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0xa -> :sswitch_1
        0x66 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6b -> :sswitch_4
        0xc8 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$300(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 281
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 287
    if-nez p2, :cond_1

    .line 288
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$200(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04009e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 292
    .local v0, "tv":Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$400(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 298
    :cond_0
    return-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_1
    move-object v0, p2

    .line 290
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "tv":Landroid/widget/TextView;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public onAddressAvailable(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mLocationIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->notifyDataSetChanged()V

    .line 305
    return-void
.end method

.method public onResolutionAvailable(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 309
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$200(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 312
    .local v0, "context":Landroid/content/Context;
    const-string v3, "%s: %d"

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "widthString":Ljava/lang/String;
    const-string v3, "%s: %d"

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x6

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "heightString":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mWidthIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mHeightIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
