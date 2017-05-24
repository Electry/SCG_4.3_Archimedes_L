.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;
.source "LanguagesGroupItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$ChangeConfigurationListener;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$OnLanguageItemClickListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "Test"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$OnLanguageItemClickListener;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$OnLanguageItemClickListener;

    .prologue
    .line 45
    const-string/jumbo v0, "\u8bed\u8a00\u5217\u8868"

    const-string/jumbo v1, "\u6309\u5e8f\u5217\u4e3e\u51fa\u7cfb\u7edf\u652f\u6301\u7684\u8bed\u8a00\u5217\u8868\u3002"

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;->constructLocales(Landroid/content/Context;)[Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;

    move-result-object v10

    .line 47
    .local v10, "locales":[Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;
    move-object v7, v10

    .local v7, "arr$":[Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;
    array-length v9, v7

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v6, v7, v8

    .line 48
    .local v6, "info":Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$1;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->NORMAL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$OnLanguageItemClickListener;Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 47
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 55
    .end local v6    # "info":Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;
    :cond_0
    return-void
.end method

.method public static constructLocales(Landroid/content/Context;)[Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 93
    .local v15, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v12

    .line 94
    .local v12, "locales":[Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "zh_CN"

    aput-object v20, v17, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "zh_TW"

    aput-object v20, v17, v19

    .line 97
    .local v17, "specialLocaleCodes":[Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "\u4e2d\u6587 (\u7b80\u4f53)"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "\u4e2d\u6587 (\u7e41\u9ad4)"

    aput-object v20, v18, v19

    .line 101
    .local v18, "specialLocaleNames":[Ljava/lang/String;
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 102
    array-length v13, v12

    .line 103
    .local v13, "origSize":I
    new-array v14, v13, [Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;

    .line 104
    .local v14, "preprocess":[Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;
    const/4 v5, 0x0

    .line 105
    .local v5, "finalSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    move v6, v5

    .end local v5    # "finalSize":I
    .local v6, "finalSize":I
    :goto_0
    if-ge v7, v13, :cond_3

    .line 106
    aget-object v16, v12, v7

    .line 107
    .local v16, "s":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v10

    .line 108
    .local v10, "len":I
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v10, v0, :cond_5

    .line 109
    const/16 v19, 0x0

    const/16 v20, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, "language":Ljava/lang/String;
    const/16 v19, 0x3

    const/16 v20, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "country":Ljava/lang/String;
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v9, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v8, "l":Ljava/util/Locale;
    if-nez v6, :cond_0

    .line 115
    const-string v19, "Test"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "adding initial "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "finalSize":I
    .restart local v5    # "finalSize":I
    new-instance v19, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;

    invoke-virtual {v8, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v19, v14, v6

    .line 105
    .end local v3    # "country":Ljava/lang/String;
    .end local v8    # "l":Ljava/util/Locale;
    .end local v9    # "language":Ljava/lang/String;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "finalSize":I
    .restart local v6    # "finalSize":I
    goto :goto_0

    .line 124
    .restart local v3    # "country":Ljava/lang/String;
    .restart local v8    # "l":Ljava/util/Locale;
    .restart local v9    # "language":Ljava/lang/String;
    :cond_0
    add-int/lit8 v19, v6, -0x1

    aget-object v19, v14, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 127
    const-string v19, "Test"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "backing up and fixing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v6, -0x1

    aget-object v21, v14, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;->label:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v6, -0x1

    aget-object v21, v14, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    add-int/lit8 v19, v6, -0x1

    aget-object v19, v14, v19

    add-int/lit8 v20, v6, -0x1

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;->label:Ljava/lang/String;

    .line 136
    const-string v19, "Test"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  and adding "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v8, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "finalSize":I
    .restart local v5    # "finalSize":I
    new-instance v19, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v8, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v19, v14, v6

    goto/16 :goto_1

    .line 145
    .end local v5    # "finalSize":I
    .restart local v6    # "finalSize":I
    :cond_1
    const-string/jumbo v19, "zz_ZZ"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 146
    const-string v4, "Pseudo..."

    .line 151
    .local v4, "displayName":Ljava/lang/String;
    :goto_2
    const-string v19, "Test"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "adding "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "finalSize":I
    .restart local v5    # "finalSize":I
    new-instance v19, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v8}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v19, v14, v6

    goto/16 :goto_1

    .line 148
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v5    # "finalSize":I
    .restart local v6    # "finalSize":I
    :cond_2
    invoke-virtual {v8, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 159
    .end local v3    # "country":Ljava/lang/String;
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v8    # "l":Ljava/util/Locale;
    .end local v9    # "language":Ljava/lang/String;
    .end local v10    # "len":I
    .end local v16    # "s":Ljava/lang/String;
    :cond_3
    new-array v11, v6, [Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;

    .line 160
    .local v11, "localeInfos":[Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    .line 161
    aget-object v19, v14, v7

    aput-object v19, v11, v7

    .line 160
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 163
    :cond_4
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 164
    return-object v11

    .end local v11    # "localeInfos":[Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$LocaleInfo;
    .restart local v10    # "len":I
    .restart local v16    # "s":Ljava/lang/String;
    :cond_5
    move v5, v6

    .end local v6    # "finalSize":I
    .restart local v5    # "finalSize":I
    goto/16 :goto_1
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 177
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 180
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    aget-object v2, p2, v1

    .line 185
    :goto_1
    return-object v2

    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
