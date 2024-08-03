// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driftTablecreation.dart';

// ignore_for_file: type=lint
class $DriftItemMasterTable extends DriftItemMaster
    with TableInfo<$DriftItemMasterTable, DriftItemMasterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftItemMasterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _IMidMeta = const VerificationMeta('IMid');
  @override
  late final GeneratedColumn<int> IMid = GeneratedColumn<int>(
      'i_mid', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _auditScheduleIDMeta =
      const VerificationMeta('auditScheduleID');
  @override
  late final GeneratedColumn<int> auditScheduleID = GeneratedColumn<int>(
      'AuditSchedule_ID', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'Id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _itemDispositionMeta =
      const VerificationMeta('itemDisposition');
  @override
  late final GeneratedColumn<int> itemDisposition = GeneratedColumn<int>(
      'ItemDisposition', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _dispIdMeta = const VerificationMeta('dispId');
  @override
  late final GeneratedColumn<int> dispId = GeneratedColumn<int>(
      'DispID', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _itemCodeMeta =
      const VerificationMeta('itemCode');
  @override
  late final GeneratedColumn<String> itemCode = GeneratedColumn<String>(
      'ItemCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemTypeMeta =
      const VerificationMeta('itemType');
  @override
  late final GeneratedColumn<String> itemType = GeneratedColumn<String>(
      'ItemType', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemNameMeta =
      const VerificationMeta('itemName');
  @override
  late final GeneratedColumn<String> itemName = GeneratedColumn<String>(
      'ItemName', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'Category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _subCategoryMeta =
      const VerificationMeta('subCategory');
  @override
  late final GeneratedColumn<String> subCategory = GeneratedColumn<String>(
      'SubCategory', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
      'Brand', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemDescriptionMeta =
      const VerificationMeta('itemDescription');
  @override
  late final GeneratedColumn<String> itemDescription = GeneratedColumn<String>(
      'ItemDescription', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _modelNoMeta =
      const VerificationMeta('modelNo');
  @override
  late final GeneratedColumn<String> modelNo = GeneratedColumn<String>(
      'ModelNo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _partCodeMeta =
      const VerificationMeta('partCode');
  @override
  late final GeneratedColumn<String> partCode = GeneratedColumn<String>(
      'PartCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _skucodeMeta =
      const VerificationMeta('skucode');
  @override
  late final GeneratedColumn<String> skucode = GeneratedColumn<String>(
      'Skucode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _brandCodeMeta =
      const VerificationMeta('brandCode');
  @override
  late final GeneratedColumn<String> brandCode = GeneratedColumn<String>(
      'BrandCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemGroupMeta =
      const VerificationMeta('itemGroup');
  @override
  late final GeneratedColumn<String> itemGroup = GeneratedColumn<String>(
      'ItemGroup', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _specificationMeta =
      const VerificationMeta('specification');
  @override
  late final GeneratedColumn<String> specification = GeneratedColumn<String>(
      'Specification', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sizeCapacityMeta =
      const VerificationMeta('sizeCapacity');
  @override
  late final GeneratedColumn<String> sizeCapacity = GeneratedColumn<String>(
      'SizeCapacity', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clasificationMeta =
      const VerificationMeta('clasification');
  @override
  late final GeneratedColumn<String> clasification = GeneratedColumn<String>(
      'Clasification', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedDateTimeMeta =
      const VerificationMeta('updatedDateTime');
  @override
  late final GeneratedColumn<String> updatedDateTime = GeneratedColumn<String>(
      'UpdatedDateTime', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _uoMMeta = const VerificationMeta('uoM');
  @override
  late final GeneratedColumn<String> uoM = GeneratedColumn<String>(
      'UoM', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxRateMeta =
      const VerificationMeta('taxRate');
  @override
  late final GeneratedColumn<double> taxRate = GeneratedColumn<double>(
      'TaxRate', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _imageUrl1Meta =
      const VerificationMeta('imageUrl1');
  @override
  late final GeneratedColumn<String> imageUrl1 = GeneratedColumn<String>(
      'ImageURL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _textNoteMeta =
      const VerificationMeta('textNote');
  @override
  late final GeneratedColumn<String> textNote = GeneratedColumn<String>(
      'TextNote', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'Status', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _movingTypeMeta =
      const VerificationMeta('movingType');
  @override
  late final GeneratedColumn<int> movingType = GeneratedColumn<int>(
      'MovingType', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _traceIdMeta =
      const VerificationMeta('traceId');
  @override
  late final GeneratedColumn<String> traceId = GeneratedColumn<String>(
      'traceid', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedByMeta =
      const VerificationMeta('updatedBy');
  @override
  late final GeneratedColumn<String> updatedBy = GeneratedColumn<String>(
      'UpdatedBy', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<int> createdBy = GeneratedColumn<int>(
      'CreatedBy', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _lengthhMeta =
      const VerificationMeta('lengthh');
  @override
  late final GeneratedColumn<double> lengthh = GeneratedColumn<double>(
      'Length', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<double> width = GeneratedColumn<double>(
      'Width', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
      'Height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
      'Weight', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _volumeMeta = const VerificationMeta('volume');
  @override
  late final GeneratedColumn<double> volume = GeneratedColumn<double>(
      'Volume', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _inwardUoMMeta =
      const VerificationMeta('inwardUoM');
  @override
  late final GeneratedColumn<String> inwardUoM = GeneratedColumn<String>(
      'InwardUoM', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _inwardPackQtyMeta =
      const VerificationMeta('inwardPackQty');
  @override
  late final GeneratedColumn<double> inwardPackQty = GeneratedColumn<double>(
      'InwardPackQty', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _outwardUoMMeta =
      const VerificationMeta('outwardUoM');
  @override
  late final GeneratedColumn<String> outwardUoM = GeneratedColumn<String>(
      'OutwardUoM', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _outwardPackQtyMeta =
      const VerificationMeta('outwardPackQty');
  @override
  late final GeneratedColumn<double> outwardPackQty = GeneratedColumn<double>(
      'OutwardPackQty', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _isPerishableMeta =
      const VerificationMeta('isPerishable');
  @override
  late final GeneratedColumn<bool> isPerishable = GeneratedColumn<bool>(
      'isPerishable', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("isPerishable" IN (0, 1))'));
  static const VerificationMeta _hasExpiryDateMeta =
      const VerificationMeta('hasExpiryDate');
  @override
  late final GeneratedColumn<bool> hasExpiryDate = GeneratedColumn<bool>(
      'hasExpiryDate', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("hasExpiryDate" IN (0, 1))'));
  static const VerificationMeta _expiryDaysMeta =
      const VerificationMeta('expiryDays');
  @override
  late final GeneratedColumn<int> expiryDays = GeneratedColumn<int>(
      'ExpiryDays', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _isFragileMeta =
      const VerificationMeta('isFragile');
  @override
  late final GeneratedColumn<int> isFragile = GeneratedColumn<int>(
      'isFragile', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _manageByMeta =
      const VerificationMeta('manageBy');
  @override
  late final GeneratedColumn<String> manageBy = GeneratedColumn<String>(
      'ManageBy', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdDateTimeMeta =
      const VerificationMeta('createdDateTime');
  @override
  late final GeneratedColumn<String> createdDateTime = GeneratedColumn<String>(
      'CreatedDateTime', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'Color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        IMid,
        auditScheduleID,
        id,
        itemDisposition,
        dispId,
        itemCode,
        itemType,
        itemName,
        category,
        subCategory,
        brand,
        itemDescription,
        modelNo,
        partCode,
        skucode,
        brandCode,
        itemGroup,
        specification,
        sizeCapacity,
        clasification,
        updatedDateTime,
        uoM,
        taxRate,
        imageUrl1,
        textNote,
        status,
        movingType,
        traceId,
        updatedBy,
        createdBy,
        lengthh,
        width,
        height,
        weight,
        volume,
        inwardUoM,
        inwardPackQty,
        outwardUoM,
        outwardPackQty,
        isPerishable,
        hasExpiryDate,
        expiryDays,
        isFragile,
        manageBy,
        createdDateTime,
        color
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drifitemmaster';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftItemMasterData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('i_mid')) {
      context.handle(
          _IMidMeta, IMid.isAcceptableOrUnknown(data['i_mid']!, _IMidMeta));
    }
    if (data.containsKey('AuditSchedule_ID')) {
      context.handle(
          _auditScheduleIDMeta,
          auditScheduleID.isAcceptableOrUnknown(
              data['AuditSchedule_ID']!, _auditScheduleIDMeta));
    }
    if (data.containsKey('Id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['Id']!, _idMeta));
    }
    if (data.containsKey('ItemDisposition')) {
      context.handle(
          _itemDispositionMeta,
          itemDisposition.isAcceptableOrUnknown(
              data['ItemDisposition']!, _itemDispositionMeta));
    }
    if (data.containsKey('DispID')) {
      context.handle(_dispIdMeta,
          dispId.isAcceptableOrUnknown(data['DispID']!, _dispIdMeta));
    }
    if (data.containsKey('ItemCode')) {
      context.handle(_itemCodeMeta,
          itemCode.isAcceptableOrUnknown(data['ItemCode']!, _itemCodeMeta));
    }
    if (data.containsKey('ItemType')) {
      context.handle(_itemTypeMeta,
          itemType.isAcceptableOrUnknown(data['ItemType']!, _itemTypeMeta));
    }
    if (data.containsKey('ItemName')) {
      context.handle(_itemNameMeta,
          itemName.isAcceptableOrUnknown(data['ItemName']!, _itemNameMeta));
    }
    if (data.containsKey('Category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['Category']!, _categoryMeta));
    }
    if (data.containsKey('SubCategory')) {
      context.handle(
          _subCategoryMeta,
          subCategory.isAcceptableOrUnknown(
              data['SubCategory']!, _subCategoryMeta));
    }
    if (data.containsKey('Brand')) {
      context.handle(
          _brandMeta, brand.isAcceptableOrUnknown(data['Brand']!, _brandMeta));
    }
    if (data.containsKey('ItemDescription')) {
      context.handle(
          _itemDescriptionMeta,
          itemDescription.isAcceptableOrUnknown(
              data['ItemDescription']!, _itemDescriptionMeta));
    }
    if (data.containsKey('ModelNo')) {
      context.handle(_modelNoMeta,
          modelNo.isAcceptableOrUnknown(data['ModelNo']!, _modelNoMeta));
    }
    if (data.containsKey('PartCode')) {
      context.handle(_partCodeMeta,
          partCode.isAcceptableOrUnknown(data['PartCode']!, _partCodeMeta));
    }
    if (data.containsKey('Skucode')) {
      context.handle(_skucodeMeta,
          skucode.isAcceptableOrUnknown(data['Skucode']!, _skucodeMeta));
    }
    if (data.containsKey('BrandCode')) {
      context.handle(_brandCodeMeta,
          brandCode.isAcceptableOrUnknown(data['BrandCode']!, _brandCodeMeta));
    }
    if (data.containsKey('ItemGroup')) {
      context.handle(_itemGroupMeta,
          itemGroup.isAcceptableOrUnknown(data['ItemGroup']!, _itemGroupMeta));
    }
    if (data.containsKey('Specification')) {
      context.handle(
          _specificationMeta,
          specification.isAcceptableOrUnknown(
              data['Specification']!, _specificationMeta));
    }
    if (data.containsKey('SizeCapacity')) {
      context.handle(
          _sizeCapacityMeta,
          sizeCapacity.isAcceptableOrUnknown(
              data['SizeCapacity']!, _sizeCapacityMeta));
    }
    if (data.containsKey('Clasification')) {
      context.handle(
          _clasificationMeta,
          clasification.isAcceptableOrUnknown(
              data['Clasification']!, _clasificationMeta));
    }
    if (data.containsKey('UpdatedDateTime')) {
      context.handle(
          _updatedDateTimeMeta,
          updatedDateTime.isAcceptableOrUnknown(
              data['UpdatedDateTime']!, _updatedDateTimeMeta));
    }
    if (data.containsKey('UoM')) {
      context.handle(
          _uoMMeta, uoM.isAcceptableOrUnknown(data['UoM']!, _uoMMeta));
    }
    if (data.containsKey('TaxRate')) {
      context.handle(_taxRateMeta,
          taxRate.isAcceptableOrUnknown(data['TaxRate']!, _taxRateMeta));
    }
    if (data.containsKey('ImageURL')) {
      context.handle(_imageUrl1Meta,
          imageUrl1.isAcceptableOrUnknown(data['ImageURL']!, _imageUrl1Meta));
    }
    if (data.containsKey('TextNote')) {
      context.handle(_textNoteMeta,
          textNote.isAcceptableOrUnknown(data['TextNote']!, _textNoteMeta));
    }
    if (data.containsKey('Status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['Status']!, _statusMeta));
    }
    if (data.containsKey('MovingType')) {
      context.handle(
          _movingTypeMeta,
          movingType.isAcceptableOrUnknown(
              data['MovingType']!, _movingTypeMeta));
    }
    if (data.containsKey('traceid')) {
      context.handle(_traceIdMeta,
          traceId.isAcceptableOrUnknown(data['traceid']!, _traceIdMeta));
    }
    if (data.containsKey('UpdatedBy')) {
      context.handle(_updatedByMeta,
          updatedBy.isAcceptableOrUnknown(data['UpdatedBy']!, _updatedByMeta));
    }
    if (data.containsKey('CreatedBy')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['CreatedBy']!, _createdByMeta));
    }
    if (data.containsKey('Length')) {
      context.handle(_lengthhMeta,
          lengthh.isAcceptableOrUnknown(data['Length']!, _lengthhMeta));
    }
    if (data.containsKey('Width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['Width']!, _widthMeta));
    }
    if (data.containsKey('Height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['Height']!, _heightMeta));
    }
    if (data.containsKey('Weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['Weight']!, _weightMeta));
    }
    if (data.containsKey('Volume')) {
      context.handle(_volumeMeta,
          volume.isAcceptableOrUnknown(data['Volume']!, _volumeMeta));
    }
    if (data.containsKey('InwardUoM')) {
      context.handle(_inwardUoMMeta,
          inwardUoM.isAcceptableOrUnknown(data['InwardUoM']!, _inwardUoMMeta));
    }
    if (data.containsKey('InwardPackQty')) {
      context.handle(
          _inwardPackQtyMeta,
          inwardPackQty.isAcceptableOrUnknown(
              data['InwardPackQty']!, _inwardPackQtyMeta));
    }
    if (data.containsKey('OutwardUoM')) {
      context.handle(
          _outwardUoMMeta,
          outwardUoM.isAcceptableOrUnknown(
              data['OutwardUoM']!, _outwardUoMMeta));
    }
    if (data.containsKey('OutwardPackQty')) {
      context.handle(
          _outwardPackQtyMeta,
          outwardPackQty.isAcceptableOrUnknown(
              data['OutwardPackQty']!, _outwardPackQtyMeta));
    }
    if (data.containsKey('isPerishable')) {
      context.handle(
          _isPerishableMeta,
          isPerishable.isAcceptableOrUnknown(
              data['isPerishable']!, _isPerishableMeta));
    }
    if (data.containsKey('hasExpiryDate')) {
      context.handle(
          _hasExpiryDateMeta,
          hasExpiryDate.isAcceptableOrUnknown(
              data['hasExpiryDate']!, _hasExpiryDateMeta));
    }
    if (data.containsKey('ExpiryDays')) {
      context.handle(
          _expiryDaysMeta,
          expiryDays.isAcceptableOrUnknown(
              data['ExpiryDays']!, _expiryDaysMeta));
    }
    if (data.containsKey('isFragile')) {
      context.handle(_isFragileMeta,
          isFragile.isAcceptableOrUnknown(data['isFragile']!, _isFragileMeta));
    }
    if (data.containsKey('ManageBy')) {
      context.handle(_manageByMeta,
          manageBy.isAcceptableOrUnknown(data['ManageBy']!, _manageByMeta));
    }
    if (data.containsKey('CreatedDateTime')) {
      context.handle(
          _createdDateTimeMeta,
          createdDateTime.isAcceptableOrUnknown(
              data['CreatedDateTime']!, _createdDateTimeMeta));
    }
    if (data.containsKey('Color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['Color']!, _colorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {IMid};
  @override
  DriftItemMasterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftItemMasterData(
      IMid: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}i_mid'])!,
      auditScheduleID: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}AuditSchedule_ID']),
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}Id']),
      itemDisposition: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ItemDisposition']),
      dispId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}DispID']),
      itemCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ItemCode']),
      itemType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ItemType']),
      itemName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ItemName']),
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Category']),
      subCategory: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}SubCategory']),
      brand: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Brand']),
      itemDescription: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ItemDescription']),
      modelNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ModelNo']),
      partCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}PartCode']),
      skucode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Skucode']),
      brandCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}BrandCode']),
      itemGroup: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ItemGroup']),
      specification: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Specification']),
      sizeCapacity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}SizeCapacity']),
      clasification: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Clasification']),
      updatedDateTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}UpdatedDateTime']),
      uoM: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}UoM']),
      taxRate: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}TaxRate']),
      imageUrl1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ImageURL']),
      textNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}TextNote']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Status']),
      movingType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}MovingType']),
      traceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}traceid']),
      updatedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}UpdatedBy']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CreatedBy']),
      lengthh: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}Length']),
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}Width']),
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}Height']),
      weight: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}Weight']),
      volume: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}Volume']),
      inwardUoM: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}InwardUoM']),
      inwardPackQty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}InwardPackQty']),
      outwardUoM: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}OutwardUoM']),
      outwardPackQty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}OutwardPackQty']),
      isPerishable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}isPerishable']),
      hasExpiryDate: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}hasExpiryDate']),
      expiryDays: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ExpiryDays']),
      isFragile: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}isFragile']),
      manageBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ManageBy']),
      createdDateTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CreatedDateTime']),
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Color']),
    );
  }

  @override
  $DriftItemMasterTable createAlias(String alias) {
    return $DriftItemMasterTable(attachedDatabase, alias);
  }
}

class DriftItemMasterData extends DataClass
    implements Insertable<DriftItemMasterData> {
  final int IMid;
  final int? auditScheduleID;
  final int? id;
  final int? itemDisposition;
  final int? dispId;
  final String? itemCode;
  final String? itemType;
  final String? itemName;
  final String? category;
  final String? subCategory;
  final String? brand;
  final String? itemDescription;
  final String? modelNo;
  final String? partCode;
  final String? skucode;
  final String? brandCode;
  final String? itemGroup;
  final String? specification;
  final String? sizeCapacity;
  final String? clasification;
  final String? updatedDateTime;
  final String? uoM;
  final double? taxRate;
  final String? imageUrl1;
  final String? textNote;
  final String? status;
  final int? movingType;
  final String? traceId;
  final String? updatedBy;
  final int? createdBy;
  final double? lengthh;
  final double? width;
  final double? height;
  final double? weight;
  final double? volume;
  final String? inwardUoM;
  final double? inwardPackQty;
  final String? outwardUoM;
  final double? outwardPackQty;
  final bool? isPerishable;
  final bool? hasExpiryDate;
  final int? expiryDays;
  final int? isFragile;
  final String? manageBy;
  final String? createdDateTime;
  final String? color;
  const DriftItemMasterData(
      {required this.IMid,
      this.auditScheduleID,
      this.id,
      this.itemDisposition,
      this.dispId,
      this.itemCode,
      this.itemType,
      this.itemName,
      this.category,
      this.subCategory,
      this.brand,
      this.itemDescription,
      this.modelNo,
      this.partCode,
      this.skucode,
      this.brandCode,
      this.itemGroup,
      this.specification,
      this.sizeCapacity,
      this.clasification,
      this.updatedDateTime,
      this.uoM,
      this.taxRate,
      this.imageUrl1,
      this.textNote,
      this.status,
      this.movingType,
      this.traceId,
      this.updatedBy,
      this.createdBy,
      this.lengthh,
      this.width,
      this.height,
      this.weight,
      this.volume,
      this.inwardUoM,
      this.inwardPackQty,
      this.outwardUoM,
      this.outwardPackQty,
      this.isPerishable,
      this.hasExpiryDate,
      this.expiryDays,
      this.isFragile,
      this.manageBy,
      this.createdDateTime,
      this.color});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['i_mid'] = Variable<int>(IMid);
    if (!nullToAbsent || auditScheduleID != null) {
      map['AuditSchedule_ID'] = Variable<int>(auditScheduleID);
    }
    if (!nullToAbsent || id != null) {
      map['Id'] = Variable<int>(id);
    }
    if (!nullToAbsent || itemDisposition != null) {
      map['ItemDisposition'] = Variable<int>(itemDisposition);
    }
    if (!nullToAbsent || dispId != null) {
      map['DispID'] = Variable<int>(dispId);
    }
    if (!nullToAbsent || itemCode != null) {
      map['ItemCode'] = Variable<String>(itemCode);
    }
    if (!nullToAbsent || itemType != null) {
      map['ItemType'] = Variable<String>(itemType);
    }
    if (!nullToAbsent || itemName != null) {
      map['ItemName'] = Variable<String>(itemName);
    }
    if (!nullToAbsent || category != null) {
      map['Category'] = Variable<String>(category);
    }
    if (!nullToAbsent || subCategory != null) {
      map['SubCategory'] = Variable<String>(subCategory);
    }
    if (!nullToAbsent || brand != null) {
      map['Brand'] = Variable<String>(brand);
    }
    if (!nullToAbsent || itemDescription != null) {
      map['ItemDescription'] = Variable<String>(itemDescription);
    }
    if (!nullToAbsent || modelNo != null) {
      map['ModelNo'] = Variable<String>(modelNo);
    }
    if (!nullToAbsent || partCode != null) {
      map['PartCode'] = Variable<String>(partCode);
    }
    if (!nullToAbsent || skucode != null) {
      map['Skucode'] = Variable<String>(skucode);
    }
    if (!nullToAbsent || brandCode != null) {
      map['BrandCode'] = Variable<String>(brandCode);
    }
    if (!nullToAbsent || itemGroup != null) {
      map['ItemGroup'] = Variable<String>(itemGroup);
    }
    if (!nullToAbsent || specification != null) {
      map['Specification'] = Variable<String>(specification);
    }
    if (!nullToAbsent || sizeCapacity != null) {
      map['SizeCapacity'] = Variable<String>(sizeCapacity);
    }
    if (!nullToAbsent || clasification != null) {
      map['Clasification'] = Variable<String>(clasification);
    }
    if (!nullToAbsent || updatedDateTime != null) {
      map['UpdatedDateTime'] = Variable<String>(updatedDateTime);
    }
    if (!nullToAbsent || uoM != null) {
      map['UoM'] = Variable<String>(uoM);
    }
    if (!nullToAbsent || taxRate != null) {
      map['TaxRate'] = Variable<double>(taxRate);
    }
    if (!nullToAbsent || imageUrl1 != null) {
      map['ImageURL'] = Variable<String>(imageUrl1);
    }
    if (!nullToAbsent || textNote != null) {
      map['TextNote'] = Variable<String>(textNote);
    }
    if (!nullToAbsent || status != null) {
      map['Status'] = Variable<String>(status);
    }
    if (!nullToAbsent || movingType != null) {
      map['MovingType'] = Variable<int>(movingType);
    }
    if (!nullToAbsent || traceId != null) {
      map['traceid'] = Variable<String>(traceId);
    }
    if (!nullToAbsent || updatedBy != null) {
      map['UpdatedBy'] = Variable<String>(updatedBy);
    }
    if (!nullToAbsent || createdBy != null) {
      map['CreatedBy'] = Variable<int>(createdBy);
    }
    if (!nullToAbsent || lengthh != null) {
      map['Length'] = Variable<double>(lengthh);
    }
    if (!nullToAbsent || width != null) {
      map['Width'] = Variable<double>(width);
    }
    if (!nullToAbsent || height != null) {
      map['Height'] = Variable<double>(height);
    }
    if (!nullToAbsent || weight != null) {
      map['Weight'] = Variable<double>(weight);
    }
    if (!nullToAbsent || volume != null) {
      map['Volume'] = Variable<double>(volume);
    }
    if (!nullToAbsent || inwardUoM != null) {
      map['InwardUoM'] = Variable<String>(inwardUoM);
    }
    if (!nullToAbsent || inwardPackQty != null) {
      map['InwardPackQty'] = Variable<double>(inwardPackQty);
    }
    if (!nullToAbsent || outwardUoM != null) {
      map['OutwardUoM'] = Variable<String>(outwardUoM);
    }
    if (!nullToAbsent || outwardPackQty != null) {
      map['OutwardPackQty'] = Variable<double>(outwardPackQty);
    }
    if (!nullToAbsent || isPerishable != null) {
      map['isPerishable'] = Variable<bool>(isPerishable);
    }
    if (!nullToAbsent || hasExpiryDate != null) {
      map['hasExpiryDate'] = Variable<bool>(hasExpiryDate);
    }
    if (!nullToAbsent || expiryDays != null) {
      map['ExpiryDays'] = Variable<int>(expiryDays);
    }
    if (!nullToAbsent || isFragile != null) {
      map['isFragile'] = Variable<int>(isFragile);
    }
    if (!nullToAbsent || manageBy != null) {
      map['ManageBy'] = Variable<String>(manageBy);
    }
    if (!nullToAbsent || createdDateTime != null) {
      map['CreatedDateTime'] = Variable<String>(createdDateTime);
    }
    if (!nullToAbsent || color != null) {
      map['Color'] = Variable<String>(color);
    }
    return map;
  }

  DriftItemMasterCompanion toCompanion(bool nullToAbsent) {
    return DriftItemMasterCompanion(
      IMid: Value(IMid),
      auditScheduleID: auditScheduleID == null && nullToAbsent
          ? const Value.absent()
          : Value(auditScheduleID),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      itemDisposition: itemDisposition == null && nullToAbsent
          ? const Value.absent()
          : Value(itemDisposition),
      dispId:
          dispId == null && nullToAbsent ? const Value.absent() : Value(dispId),
      itemCode: itemCode == null && nullToAbsent
          ? const Value.absent()
          : Value(itemCode),
      itemType: itemType == null && nullToAbsent
          ? const Value.absent()
          : Value(itemType),
      itemName: itemName == null && nullToAbsent
          ? const Value.absent()
          : Value(itemName),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      subCategory: subCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(subCategory),
      brand:
          brand == null && nullToAbsent ? const Value.absent() : Value(brand),
      itemDescription: itemDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(itemDescription),
      modelNo: modelNo == null && nullToAbsent
          ? const Value.absent()
          : Value(modelNo),
      partCode: partCode == null && nullToAbsent
          ? const Value.absent()
          : Value(partCode),
      skucode: skucode == null && nullToAbsent
          ? const Value.absent()
          : Value(skucode),
      brandCode: brandCode == null && nullToAbsent
          ? const Value.absent()
          : Value(brandCode),
      itemGroup: itemGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(itemGroup),
      specification: specification == null && nullToAbsent
          ? const Value.absent()
          : Value(specification),
      sizeCapacity: sizeCapacity == null && nullToAbsent
          ? const Value.absent()
          : Value(sizeCapacity),
      clasification: clasification == null && nullToAbsent
          ? const Value.absent()
          : Value(clasification),
      updatedDateTime: updatedDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedDateTime),
      uoM: uoM == null && nullToAbsent ? const Value.absent() : Value(uoM),
      taxRate: taxRate == null && nullToAbsent
          ? const Value.absent()
          : Value(taxRate),
      imageUrl1: imageUrl1 == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl1),
      textNote: textNote == null && nullToAbsent
          ? const Value.absent()
          : Value(textNote),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      movingType: movingType == null && nullToAbsent
          ? const Value.absent()
          : Value(movingType),
      traceId: traceId == null && nullToAbsent
          ? const Value.absent()
          : Value(traceId),
      updatedBy: updatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedBy),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      lengthh: lengthh == null && nullToAbsent
          ? const Value.absent()
          : Value(lengthh),
      width:
          width == null && nullToAbsent ? const Value.absent() : Value(width),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      volume:
          volume == null && nullToAbsent ? const Value.absent() : Value(volume),
      inwardUoM: inwardUoM == null && nullToAbsent
          ? const Value.absent()
          : Value(inwardUoM),
      inwardPackQty: inwardPackQty == null && nullToAbsent
          ? const Value.absent()
          : Value(inwardPackQty),
      outwardUoM: outwardUoM == null && nullToAbsent
          ? const Value.absent()
          : Value(outwardUoM),
      outwardPackQty: outwardPackQty == null && nullToAbsent
          ? const Value.absent()
          : Value(outwardPackQty),
      isPerishable: isPerishable == null && nullToAbsent
          ? const Value.absent()
          : Value(isPerishable),
      hasExpiryDate: hasExpiryDate == null && nullToAbsent
          ? const Value.absent()
          : Value(hasExpiryDate),
      expiryDays: expiryDays == null && nullToAbsent
          ? const Value.absent()
          : Value(expiryDays),
      isFragile: isFragile == null && nullToAbsent
          ? const Value.absent()
          : Value(isFragile),
      manageBy: manageBy == null && nullToAbsent
          ? const Value.absent()
          : Value(manageBy),
      createdDateTime: createdDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDateTime),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
    );
  }

  factory DriftItemMasterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftItemMasterData(
      IMid: serializer.fromJson<int>(json['IMid']),
      auditScheduleID: serializer.fromJson<int?>(json['auditScheduleID']),
      id: serializer.fromJson<int?>(json['id']),
      itemDisposition: serializer.fromJson<int?>(json['itemDisposition']),
      dispId: serializer.fromJson<int?>(json['dispId']),
      itemCode: serializer.fromJson<String?>(json['itemCode']),
      itemType: serializer.fromJson<String?>(json['itemType']),
      itemName: serializer.fromJson<String?>(json['itemName']),
      category: serializer.fromJson<String?>(json['category']),
      subCategory: serializer.fromJson<String?>(json['subCategory']),
      brand: serializer.fromJson<String?>(json['brand']),
      itemDescription: serializer.fromJson<String?>(json['itemDescription']),
      modelNo: serializer.fromJson<String?>(json['modelNo']),
      partCode: serializer.fromJson<String?>(json['partCode']),
      skucode: serializer.fromJson<String?>(json['skucode']),
      brandCode: serializer.fromJson<String?>(json['brandCode']),
      itemGroup: serializer.fromJson<String?>(json['itemGroup']),
      specification: serializer.fromJson<String?>(json['specification']),
      sizeCapacity: serializer.fromJson<String?>(json['sizeCapacity']),
      clasification: serializer.fromJson<String?>(json['clasification']),
      updatedDateTime: serializer.fromJson<String?>(json['updatedDateTime']),
      uoM: serializer.fromJson<String?>(json['uoM']),
      taxRate: serializer.fromJson<double?>(json['taxRate']),
      imageUrl1: serializer.fromJson<String?>(json['imageUrl1']),
      textNote: serializer.fromJson<String?>(json['textNote']),
      status: serializer.fromJson<String?>(json['status']),
      movingType: serializer.fromJson<int?>(json['movingType']),
      traceId: serializer.fromJson<String?>(json['traceId']),
      updatedBy: serializer.fromJson<String?>(json['updatedBy']),
      createdBy: serializer.fromJson<int?>(json['createdBy']),
      lengthh: serializer.fromJson<double?>(json['lengthh']),
      width: serializer.fromJson<double?>(json['width']),
      height: serializer.fromJson<double?>(json['height']),
      weight: serializer.fromJson<double?>(json['weight']),
      volume: serializer.fromJson<double?>(json['volume']),
      inwardUoM: serializer.fromJson<String?>(json['inwardUoM']),
      inwardPackQty: serializer.fromJson<double?>(json['inwardPackQty']),
      outwardUoM: serializer.fromJson<String?>(json['outwardUoM']),
      outwardPackQty: serializer.fromJson<double?>(json['outwardPackQty']),
      isPerishable: serializer.fromJson<bool?>(json['isPerishable']),
      hasExpiryDate: serializer.fromJson<bool?>(json['hasExpiryDate']),
      expiryDays: serializer.fromJson<int?>(json['expiryDays']),
      isFragile: serializer.fromJson<int?>(json['isFragile']),
      manageBy: serializer.fromJson<String?>(json['manageBy']),
      createdDateTime: serializer.fromJson<String?>(json['createdDateTime']),
      color: serializer.fromJson<String?>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'IMid': serializer.toJson<int>(IMid),
      'auditScheduleID': serializer.toJson<int?>(auditScheduleID),
      'id': serializer.toJson<int?>(id),
      'itemDisposition': serializer.toJson<int?>(itemDisposition),
      'dispId': serializer.toJson<int?>(dispId),
      'itemCode': serializer.toJson<String?>(itemCode),
      'itemType': serializer.toJson<String?>(itemType),
      'itemName': serializer.toJson<String?>(itemName),
      'category': serializer.toJson<String?>(category),
      'subCategory': serializer.toJson<String?>(subCategory),
      'brand': serializer.toJson<String?>(brand),
      'itemDescription': serializer.toJson<String?>(itemDescription),
      'modelNo': serializer.toJson<String?>(modelNo),
      'partCode': serializer.toJson<String?>(partCode),
      'skucode': serializer.toJson<String?>(skucode),
      'brandCode': serializer.toJson<String?>(brandCode),
      'itemGroup': serializer.toJson<String?>(itemGroup),
      'specification': serializer.toJson<String?>(specification),
      'sizeCapacity': serializer.toJson<String?>(sizeCapacity),
      'clasification': serializer.toJson<String?>(clasification),
      'updatedDateTime': serializer.toJson<String?>(updatedDateTime),
      'uoM': serializer.toJson<String?>(uoM),
      'taxRate': serializer.toJson<double?>(taxRate),
      'imageUrl1': serializer.toJson<String?>(imageUrl1),
      'textNote': serializer.toJson<String?>(textNote),
      'status': serializer.toJson<String?>(status),
      'movingType': serializer.toJson<int?>(movingType),
      'traceId': serializer.toJson<String?>(traceId),
      'updatedBy': serializer.toJson<String?>(updatedBy),
      'createdBy': serializer.toJson<int?>(createdBy),
      'lengthh': serializer.toJson<double?>(lengthh),
      'width': serializer.toJson<double?>(width),
      'height': serializer.toJson<double?>(height),
      'weight': serializer.toJson<double?>(weight),
      'volume': serializer.toJson<double?>(volume),
      'inwardUoM': serializer.toJson<String?>(inwardUoM),
      'inwardPackQty': serializer.toJson<double?>(inwardPackQty),
      'outwardUoM': serializer.toJson<String?>(outwardUoM),
      'outwardPackQty': serializer.toJson<double?>(outwardPackQty),
      'isPerishable': serializer.toJson<bool?>(isPerishable),
      'hasExpiryDate': serializer.toJson<bool?>(hasExpiryDate),
      'expiryDays': serializer.toJson<int?>(expiryDays),
      'isFragile': serializer.toJson<int?>(isFragile),
      'manageBy': serializer.toJson<String?>(manageBy),
      'createdDateTime': serializer.toJson<String?>(createdDateTime),
      'color': serializer.toJson<String?>(color),
    };
  }

  DriftItemMasterData copyWith(
          {int? IMid,
          Value<int?> auditScheduleID = const Value.absent(),
          Value<int?> id = const Value.absent(),
          Value<int?> itemDisposition = const Value.absent(),
          Value<int?> dispId = const Value.absent(),
          Value<String?> itemCode = const Value.absent(),
          Value<String?> itemType = const Value.absent(),
          Value<String?> itemName = const Value.absent(),
          Value<String?> category = const Value.absent(),
          Value<String?> subCategory = const Value.absent(),
          Value<String?> brand = const Value.absent(),
          Value<String?> itemDescription = const Value.absent(),
          Value<String?> modelNo = const Value.absent(),
          Value<String?> partCode = const Value.absent(),
          Value<String?> skucode = const Value.absent(),
          Value<String?> brandCode = const Value.absent(),
          Value<String?> itemGroup = const Value.absent(),
          Value<String?> specification = const Value.absent(),
          Value<String?> sizeCapacity = const Value.absent(),
          Value<String?> clasification = const Value.absent(),
          Value<String?> updatedDateTime = const Value.absent(),
          Value<String?> uoM = const Value.absent(),
          Value<double?> taxRate = const Value.absent(),
          Value<String?> imageUrl1 = const Value.absent(),
          Value<String?> textNote = const Value.absent(),
          Value<String?> status = const Value.absent(),
          Value<int?> movingType = const Value.absent(),
          Value<String?> traceId = const Value.absent(),
          Value<String?> updatedBy = const Value.absent(),
          Value<int?> createdBy = const Value.absent(),
          Value<double?> lengthh = const Value.absent(),
          Value<double?> width = const Value.absent(),
          Value<double?> height = const Value.absent(),
          Value<double?> weight = const Value.absent(),
          Value<double?> volume = const Value.absent(),
          Value<String?> inwardUoM = const Value.absent(),
          Value<double?> inwardPackQty = const Value.absent(),
          Value<String?> outwardUoM = const Value.absent(),
          Value<double?> outwardPackQty = const Value.absent(),
          Value<bool?> isPerishable = const Value.absent(),
          Value<bool?> hasExpiryDate = const Value.absent(),
          Value<int?> expiryDays = const Value.absent(),
          Value<int?> isFragile = const Value.absent(),
          Value<String?> manageBy = const Value.absent(),
          Value<String?> createdDateTime = const Value.absent(),
          Value<String?> color = const Value.absent()}) =>
      DriftItemMasterData(
        IMid: IMid ?? this.IMid,
        auditScheduleID: auditScheduleID.present
            ? auditScheduleID.value
            : this.auditScheduleID,
        id: id.present ? id.value : this.id,
        itemDisposition: itemDisposition.present
            ? itemDisposition.value
            : this.itemDisposition,
        dispId: dispId.present ? dispId.value : this.dispId,
        itemCode: itemCode.present ? itemCode.value : this.itemCode,
        itemType: itemType.present ? itemType.value : this.itemType,
        itemName: itemName.present ? itemName.value : this.itemName,
        category: category.present ? category.value : this.category,
        subCategory: subCategory.present ? subCategory.value : this.subCategory,
        brand: brand.present ? brand.value : this.brand,
        itemDescription: itemDescription.present
            ? itemDescription.value
            : this.itemDescription,
        modelNo: modelNo.present ? modelNo.value : this.modelNo,
        partCode: partCode.present ? partCode.value : this.partCode,
        skucode: skucode.present ? skucode.value : this.skucode,
        brandCode: brandCode.present ? brandCode.value : this.brandCode,
        itemGroup: itemGroup.present ? itemGroup.value : this.itemGroup,
        specification:
            specification.present ? specification.value : this.specification,
        sizeCapacity:
            sizeCapacity.present ? sizeCapacity.value : this.sizeCapacity,
        clasification:
            clasification.present ? clasification.value : this.clasification,
        updatedDateTime: updatedDateTime.present
            ? updatedDateTime.value
            : this.updatedDateTime,
        uoM: uoM.present ? uoM.value : this.uoM,
        taxRate: taxRate.present ? taxRate.value : this.taxRate,
        imageUrl1: imageUrl1.present ? imageUrl1.value : this.imageUrl1,
        textNote: textNote.present ? textNote.value : this.textNote,
        status: status.present ? status.value : this.status,
        movingType: movingType.present ? movingType.value : this.movingType,
        traceId: traceId.present ? traceId.value : this.traceId,
        updatedBy: updatedBy.present ? updatedBy.value : this.updatedBy,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        lengthh: lengthh.present ? lengthh.value : this.lengthh,
        width: width.present ? width.value : this.width,
        height: height.present ? height.value : this.height,
        weight: weight.present ? weight.value : this.weight,
        volume: volume.present ? volume.value : this.volume,
        inwardUoM: inwardUoM.present ? inwardUoM.value : this.inwardUoM,
        inwardPackQty:
            inwardPackQty.present ? inwardPackQty.value : this.inwardPackQty,
        outwardUoM: outwardUoM.present ? outwardUoM.value : this.outwardUoM,
        outwardPackQty:
            outwardPackQty.present ? outwardPackQty.value : this.outwardPackQty,
        isPerishable:
            isPerishable.present ? isPerishable.value : this.isPerishable,
        hasExpiryDate:
            hasExpiryDate.present ? hasExpiryDate.value : this.hasExpiryDate,
        expiryDays: expiryDays.present ? expiryDays.value : this.expiryDays,
        isFragile: isFragile.present ? isFragile.value : this.isFragile,
        manageBy: manageBy.present ? manageBy.value : this.manageBy,
        createdDateTime: createdDateTime.present
            ? createdDateTime.value
            : this.createdDateTime,
        color: color.present ? color.value : this.color,
      );
  DriftItemMasterData copyWithCompanion(DriftItemMasterCompanion data) {
    return DriftItemMasterData(
      IMid: data.IMid.present ? data.IMid.value : this.IMid,
      auditScheduleID: data.auditScheduleID.present
          ? data.auditScheduleID.value
          : this.auditScheduleID,
      id: data.id.present ? data.id.value : this.id,
      itemDisposition: data.itemDisposition.present
          ? data.itemDisposition.value
          : this.itemDisposition,
      dispId: data.dispId.present ? data.dispId.value : this.dispId,
      itemCode: data.itemCode.present ? data.itemCode.value : this.itemCode,
      itemType: data.itemType.present ? data.itemType.value : this.itemType,
      itemName: data.itemName.present ? data.itemName.value : this.itemName,
      category: data.category.present ? data.category.value : this.category,
      subCategory:
          data.subCategory.present ? data.subCategory.value : this.subCategory,
      brand: data.brand.present ? data.brand.value : this.brand,
      itemDescription: data.itemDescription.present
          ? data.itemDescription.value
          : this.itemDescription,
      modelNo: data.modelNo.present ? data.modelNo.value : this.modelNo,
      partCode: data.partCode.present ? data.partCode.value : this.partCode,
      skucode: data.skucode.present ? data.skucode.value : this.skucode,
      brandCode: data.brandCode.present ? data.brandCode.value : this.brandCode,
      itemGroup: data.itemGroup.present ? data.itemGroup.value : this.itemGroup,
      specification: data.specification.present
          ? data.specification.value
          : this.specification,
      sizeCapacity: data.sizeCapacity.present
          ? data.sizeCapacity.value
          : this.sizeCapacity,
      clasification: data.clasification.present
          ? data.clasification.value
          : this.clasification,
      updatedDateTime: data.updatedDateTime.present
          ? data.updatedDateTime.value
          : this.updatedDateTime,
      uoM: data.uoM.present ? data.uoM.value : this.uoM,
      taxRate: data.taxRate.present ? data.taxRate.value : this.taxRate,
      imageUrl1: data.imageUrl1.present ? data.imageUrl1.value : this.imageUrl1,
      textNote: data.textNote.present ? data.textNote.value : this.textNote,
      status: data.status.present ? data.status.value : this.status,
      movingType:
          data.movingType.present ? data.movingType.value : this.movingType,
      traceId: data.traceId.present ? data.traceId.value : this.traceId,
      updatedBy: data.updatedBy.present ? data.updatedBy.value : this.updatedBy,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      lengthh: data.lengthh.present ? data.lengthh.value : this.lengthh,
      width: data.width.present ? data.width.value : this.width,
      height: data.height.present ? data.height.value : this.height,
      weight: data.weight.present ? data.weight.value : this.weight,
      volume: data.volume.present ? data.volume.value : this.volume,
      inwardUoM: data.inwardUoM.present ? data.inwardUoM.value : this.inwardUoM,
      inwardPackQty: data.inwardPackQty.present
          ? data.inwardPackQty.value
          : this.inwardPackQty,
      outwardUoM:
          data.outwardUoM.present ? data.outwardUoM.value : this.outwardUoM,
      outwardPackQty: data.outwardPackQty.present
          ? data.outwardPackQty.value
          : this.outwardPackQty,
      isPerishable: data.isPerishable.present
          ? data.isPerishable.value
          : this.isPerishable,
      hasExpiryDate: data.hasExpiryDate.present
          ? data.hasExpiryDate.value
          : this.hasExpiryDate,
      expiryDays:
          data.expiryDays.present ? data.expiryDays.value : this.expiryDays,
      isFragile: data.isFragile.present ? data.isFragile.value : this.isFragile,
      manageBy: data.manageBy.present ? data.manageBy.value : this.manageBy,
      createdDateTime: data.createdDateTime.present
          ? data.createdDateTime.value
          : this.createdDateTime,
      color: data.color.present ? data.color.value : this.color,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftItemMasterData(')
          ..write('IMid: $IMid, ')
          ..write('auditScheduleID: $auditScheduleID, ')
          ..write('id: $id, ')
          ..write('itemDisposition: $itemDisposition, ')
          ..write('dispId: $dispId, ')
          ..write('itemCode: $itemCode, ')
          ..write('itemType: $itemType, ')
          ..write('itemName: $itemName, ')
          ..write('category: $category, ')
          ..write('subCategory: $subCategory, ')
          ..write('brand: $brand, ')
          ..write('itemDescription: $itemDescription, ')
          ..write('modelNo: $modelNo, ')
          ..write('partCode: $partCode, ')
          ..write('skucode: $skucode, ')
          ..write('brandCode: $brandCode, ')
          ..write('itemGroup: $itemGroup, ')
          ..write('specification: $specification, ')
          ..write('sizeCapacity: $sizeCapacity, ')
          ..write('clasification: $clasification, ')
          ..write('updatedDateTime: $updatedDateTime, ')
          ..write('uoM: $uoM, ')
          ..write('taxRate: $taxRate, ')
          ..write('imageUrl1: $imageUrl1, ')
          ..write('textNote: $textNote, ')
          ..write('status: $status, ')
          ..write('movingType: $movingType, ')
          ..write('traceId: $traceId, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('createdBy: $createdBy, ')
          ..write('lengthh: $lengthh, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('volume: $volume, ')
          ..write('inwardUoM: $inwardUoM, ')
          ..write('inwardPackQty: $inwardPackQty, ')
          ..write('outwardUoM: $outwardUoM, ')
          ..write('outwardPackQty: $outwardPackQty, ')
          ..write('isPerishable: $isPerishable, ')
          ..write('hasExpiryDate: $hasExpiryDate, ')
          ..write('expiryDays: $expiryDays, ')
          ..write('isFragile: $isFragile, ')
          ..write('manageBy: $manageBy, ')
          ..write('createdDateTime: $createdDateTime, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        IMid,
        auditScheduleID,
        id,
        itemDisposition,
        dispId,
        itemCode,
        itemType,
        itemName,
        category,
        subCategory,
        brand,
        itemDescription,
        modelNo,
        partCode,
        skucode,
        brandCode,
        itemGroup,
        specification,
        sizeCapacity,
        clasification,
        updatedDateTime,
        uoM,
        taxRate,
        imageUrl1,
        textNote,
        status,
        movingType,
        traceId,
        updatedBy,
        createdBy,
        lengthh,
        width,
        height,
        weight,
        volume,
        inwardUoM,
        inwardPackQty,
        outwardUoM,
        outwardPackQty,
        isPerishable,
        hasExpiryDate,
        expiryDays,
        isFragile,
        manageBy,
        createdDateTime,
        color
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftItemMasterData &&
          other.IMid == this.IMid &&
          other.auditScheduleID == this.auditScheduleID &&
          other.id == this.id &&
          other.itemDisposition == this.itemDisposition &&
          other.dispId == this.dispId &&
          other.itemCode == this.itemCode &&
          other.itemType == this.itemType &&
          other.itemName == this.itemName &&
          other.category == this.category &&
          other.subCategory == this.subCategory &&
          other.brand == this.brand &&
          other.itemDescription == this.itemDescription &&
          other.modelNo == this.modelNo &&
          other.partCode == this.partCode &&
          other.skucode == this.skucode &&
          other.brandCode == this.brandCode &&
          other.itemGroup == this.itemGroup &&
          other.specification == this.specification &&
          other.sizeCapacity == this.sizeCapacity &&
          other.clasification == this.clasification &&
          other.updatedDateTime == this.updatedDateTime &&
          other.uoM == this.uoM &&
          other.taxRate == this.taxRate &&
          other.imageUrl1 == this.imageUrl1 &&
          other.textNote == this.textNote &&
          other.status == this.status &&
          other.movingType == this.movingType &&
          other.traceId == this.traceId &&
          other.updatedBy == this.updatedBy &&
          other.createdBy == this.createdBy &&
          other.lengthh == this.lengthh &&
          other.width == this.width &&
          other.height == this.height &&
          other.weight == this.weight &&
          other.volume == this.volume &&
          other.inwardUoM == this.inwardUoM &&
          other.inwardPackQty == this.inwardPackQty &&
          other.outwardUoM == this.outwardUoM &&
          other.outwardPackQty == this.outwardPackQty &&
          other.isPerishable == this.isPerishable &&
          other.hasExpiryDate == this.hasExpiryDate &&
          other.expiryDays == this.expiryDays &&
          other.isFragile == this.isFragile &&
          other.manageBy == this.manageBy &&
          other.createdDateTime == this.createdDateTime &&
          other.color == this.color);
}

class DriftItemMasterCompanion extends UpdateCompanion<DriftItemMasterData> {
  final Value<int> IMid;
  final Value<int?> auditScheduleID;
  final Value<int?> id;
  final Value<int?> itemDisposition;
  final Value<int?> dispId;
  final Value<String?> itemCode;
  final Value<String?> itemType;
  final Value<String?> itemName;
  final Value<String?> category;
  final Value<String?> subCategory;
  final Value<String?> brand;
  final Value<String?> itemDescription;
  final Value<String?> modelNo;
  final Value<String?> partCode;
  final Value<String?> skucode;
  final Value<String?> brandCode;
  final Value<String?> itemGroup;
  final Value<String?> specification;
  final Value<String?> sizeCapacity;
  final Value<String?> clasification;
  final Value<String?> updatedDateTime;
  final Value<String?> uoM;
  final Value<double?> taxRate;
  final Value<String?> imageUrl1;
  final Value<String?> textNote;
  final Value<String?> status;
  final Value<int?> movingType;
  final Value<String?> traceId;
  final Value<String?> updatedBy;
  final Value<int?> createdBy;
  final Value<double?> lengthh;
  final Value<double?> width;
  final Value<double?> height;
  final Value<double?> weight;
  final Value<double?> volume;
  final Value<String?> inwardUoM;
  final Value<double?> inwardPackQty;
  final Value<String?> outwardUoM;
  final Value<double?> outwardPackQty;
  final Value<bool?> isPerishable;
  final Value<bool?> hasExpiryDate;
  final Value<int?> expiryDays;
  final Value<int?> isFragile;
  final Value<String?> manageBy;
  final Value<String?> createdDateTime;
  final Value<String?> color;
  const DriftItemMasterCompanion({
    this.IMid = const Value.absent(),
    this.auditScheduleID = const Value.absent(),
    this.id = const Value.absent(),
    this.itemDisposition = const Value.absent(),
    this.dispId = const Value.absent(),
    this.itemCode = const Value.absent(),
    this.itemType = const Value.absent(),
    this.itemName = const Value.absent(),
    this.category = const Value.absent(),
    this.subCategory = const Value.absent(),
    this.brand = const Value.absent(),
    this.itemDescription = const Value.absent(),
    this.modelNo = const Value.absent(),
    this.partCode = const Value.absent(),
    this.skucode = const Value.absent(),
    this.brandCode = const Value.absent(),
    this.itemGroup = const Value.absent(),
    this.specification = const Value.absent(),
    this.sizeCapacity = const Value.absent(),
    this.clasification = const Value.absent(),
    this.updatedDateTime = const Value.absent(),
    this.uoM = const Value.absent(),
    this.taxRate = const Value.absent(),
    this.imageUrl1 = const Value.absent(),
    this.textNote = const Value.absent(),
    this.status = const Value.absent(),
    this.movingType = const Value.absent(),
    this.traceId = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.lengthh = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.volume = const Value.absent(),
    this.inwardUoM = const Value.absent(),
    this.inwardPackQty = const Value.absent(),
    this.outwardUoM = const Value.absent(),
    this.outwardPackQty = const Value.absent(),
    this.isPerishable = const Value.absent(),
    this.hasExpiryDate = const Value.absent(),
    this.expiryDays = const Value.absent(),
    this.isFragile = const Value.absent(),
    this.manageBy = const Value.absent(),
    this.createdDateTime = const Value.absent(),
    this.color = const Value.absent(),
  });
  DriftItemMasterCompanion.insert({
    this.IMid = const Value.absent(),
    this.auditScheduleID = const Value.absent(),
    this.id = const Value.absent(),
    this.itemDisposition = const Value.absent(),
    this.dispId = const Value.absent(),
    this.itemCode = const Value.absent(),
    this.itemType = const Value.absent(),
    this.itemName = const Value.absent(),
    this.category = const Value.absent(),
    this.subCategory = const Value.absent(),
    this.brand = const Value.absent(),
    this.itemDescription = const Value.absent(),
    this.modelNo = const Value.absent(),
    this.partCode = const Value.absent(),
    this.skucode = const Value.absent(),
    this.brandCode = const Value.absent(),
    this.itemGroup = const Value.absent(),
    this.specification = const Value.absent(),
    this.sizeCapacity = const Value.absent(),
    this.clasification = const Value.absent(),
    this.updatedDateTime = const Value.absent(),
    this.uoM = const Value.absent(),
    this.taxRate = const Value.absent(),
    this.imageUrl1 = const Value.absent(),
    this.textNote = const Value.absent(),
    this.status = const Value.absent(),
    this.movingType = const Value.absent(),
    this.traceId = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.lengthh = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.volume = const Value.absent(),
    this.inwardUoM = const Value.absent(),
    this.inwardPackQty = const Value.absent(),
    this.outwardUoM = const Value.absent(),
    this.outwardPackQty = const Value.absent(),
    this.isPerishable = const Value.absent(),
    this.hasExpiryDate = const Value.absent(),
    this.expiryDays = const Value.absent(),
    this.isFragile = const Value.absent(),
    this.manageBy = const Value.absent(),
    this.createdDateTime = const Value.absent(),
    this.color = const Value.absent(),
  });
  static Insertable<DriftItemMasterData> custom({
    Expression<int>? IMid,
    Expression<int>? auditScheduleID,
    Expression<int>? id,
    Expression<int>? itemDisposition,
    Expression<int>? dispId,
    Expression<String>? itemCode,
    Expression<String>? itemType,
    Expression<String>? itemName,
    Expression<String>? category,
    Expression<String>? subCategory,
    Expression<String>? brand,
    Expression<String>? itemDescription,
    Expression<String>? modelNo,
    Expression<String>? partCode,
    Expression<String>? skucode,
    Expression<String>? brandCode,
    Expression<String>? itemGroup,
    Expression<String>? specification,
    Expression<String>? sizeCapacity,
    Expression<String>? clasification,
    Expression<String>? updatedDateTime,
    Expression<String>? uoM,
    Expression<double>? taxRate,
    Expression<String>? imageUrl1,
    Expression<String>? textNote,
    Expression<String>? status,
    Expression<int>? movingType,
    Expression<String>? traceId,
    Expression<String>? updatedBy,
    Expression<int>? createdBy,
    Expression<double>? lengthh,
    Expression<double>? width,
    Expression<double>? height,
    Expression<double>? weight,
    Expression<double>? volume,
    Expression<String>? inwardUoM,
    Expression<double>? inwardPackQty,
    Expression<String>? outwardUoM,
    Expression<double>? outwardPackQty,
    Expression<bool>? isPerishable,
    Expression<bool>? hasExpiryDate,
    Expression<int>? expiryDays,
    Expression<int>? isFragile,
    Expression<String>? manageBy,
    Expression<String>? createdDateTime,
    Expression<String>? color,
  }) {
    return RawValuesInsertable({
      if (IMid != null) 'i_mid': IMid,
      if (auditScheduleID != null) 'AuditSchedule_ID': auditScheduleID,
      if (id != null) 'Id': id,
      if (itemDisposition != null) 'ItemDisposition': itemDisposition,
      if (dispId != null) 'DispID': dispId,
      if (itemCode != null) 'ItemCode': itemCode,
      if (itemType != null) 'ItemType': itemType,
      if (itemName != null) 'ItemName': itemName,
      if (category != null) 'Category': category,
      if (subCategory != null) 'SubCategory': subCategory,
      if (brand != null) 'Brand': brand,
      if (itemDescription != null) 'ItemDescription': itemDescription,
      if (modelNo != null) 'ModelNo': modelNo,
      if (partCode != null) 'PartCode': partCode,
      if (skucode != null) 'Skucode': skucode,
      if (brandCode != null) 'BrandCode': brandCode,
      if (itemGroup != null) 'ItemGroup': itemGroup,
      if (specification != null) 'Specification': specification,
      if (sizeCapacity != null) 'SizeCapacity': sizeCapacity,
      if (clasification != null) 'Clasification': clasification,
      if (updatedDateTime != null) 'UpdatedDateTime': updatedDateTime,
      if (uoM != null) 'UoM': uoM,
      if (taxRate != null) 'TaxRate': taxRate,
      if (imageUrl1 != null) 'ImageURL': imageUrl1,
      if (textNote != null) 'TextNote': textNote,
      if (status != null) 'Status': status,
      if (movingType != null) 'MovingType': movingType,
      if (traceId != null) 'traceid': traceId,
      if (updatedBy != null) 'UpdatedBy': updatedBy,
      if (createdBy != null) 'CreatedBy': createdBy,
      if (lengthh != null) 'Length': lengthh,
      if (width != null) 'Width': width,
      if (height != null) 'Height': height,
      if (weight != null) 'Weight': weight,
      if (volume != null) 'Volume': volume,
      if (inwardUoM != null) 'InwardUoM': inwardUoM,
      if (inwardPackQty != null) 'InwardPackQty': inwardPackQty,
      if (outwardUoM != null) 'OutwardUoM': outwardUoM,
      if (outwardPackQty != null) 'OutwardPackQty': outwardPackQty,
      if (isPerishable != null) 'isPerishable': isPerishable,
      if (hasExpiryDate != null) 'hasExpiryDate': hasExpiryDate,
      if (expiryDays != null) 'ExpiryDays': expiryDays,
      if (isFragile != null) 'isFragile': isFragile,
      if (manageBy != null) 'ManageBy': manageBy,
      if (createdDateTime != null) 'CreatedDateTime': createdDateTime,
      if (color != null) 'Color': color,
    });
  }

  DriftItemMasterCompanion copyWith(
      {Value<int>? IMid,
      Value<int?>? auditScheduleID,
      Value<int?>? id,
      Value<int?>? itemDisposition,
      Value<int?>? dispId,
      Value<String?>? itemCode,
      Value<String?>? itemType,
      Value<String?>? itemName,
      Value<String?>? category,
      Value<String?>? subCategory,
      Value<String?>? brand,
      Value<String?>? itemDescription,
      Value<String?>? modelNo,
      Value<String?>? partCode,
      Value<String?>? skucode,
      Value<String?>? brandCode,
      Value<String?>? itemGroup,
      Value<String?>? specification,
      Value<String?>? sizeCapacity,
      Value<String?>? clasification,
      Value<String?>? updatedDateTime,
      Value<String?>? uoM,
      Value<double?>? taxRate,
      Value<String?>? imageUrl1,
      Value<String?>? textNote,
      Value<String?>? status,
      Value<int?>? movingType,
      Value<String?>? traceId,
      Value<String?>? updatedBy,
      Value<int?>? createdBy,
      Value<double?>? lengthh,
      Value<double?>? width,
      Value<double?>? height,
      Value<double?>? weight,
      Value<double?>? volume,
      Value<String?>? inwardUoM,
      Value<double?>? inwardPackQty,
      Value<String?>? outwardUoM,
      Value<double?>? outwardPackQty,
      Value<bool?>? isPerishable,
      Value<bool?>? hasExpiryDate,
      Value<int?>? expiryDays,
      Value<int?>? isFragile,
      Value<String?>? manageBy,
      Value<String?>? createdDateTime,
      Value<String?>? color}) {
    return DriftItemMasterCompanion(
      IMid: IMid ?? this.IMid,
      auditScheduleID: auditScheduleID ?? this.auditScheduleID,
      id: id ?? this.id,
      itemDisposition: itemDisposition ?? this.itemDisposition,
      dispId: dispId ?? this.dispId,
      itemCode: itemCode ?? this.itemCode,
      itemType: itemType ?? this.itemType,
      itemName: itemName ?? this.itemName,
      category: category ?? this.category,
      subCategory: subCategory ?? this.subCategory,
      brand: brand ?? this.brand,
      itemDescription: itemDescription ?? this.itemDescription,
      modelNo: modelNo ?? this.modelNo,
      partCode: partCode ?? this.partCode,
      skucode: skucode ?? this.skucode,
      brandCode: brandCode ?? this.brandCode,
      itemGroup: itemGroup ?? this.itemGroup,
      specification: specification ?? this.specification,
      sizeCapacity: sizeCapacity ?? this.sizeCapacity,
      clasification: clasification ?? this.clasification,
      updatedDateTime: updatedDateTime ?? this.updatedDateTime,
      uoM: uoM ?? this.uoM,
      taxRate: taxRate ?? this.taxRate,
      imageUrl1: imageUrl1 ?? this.imageUrl1,
      textNote: textNote ?? this.textNote,
      status: status ?? this.status,
      movingType: movingType ?? this.movingType,
      traceId: traceId ?? this.traceId,
      updatedBy: updatedBy ?? this.updatedBy,
      createdBy: createdBy ?? this.createdBy,
      lengthh: lengthh ?? this.lengthh,
      width: width ?? this.width,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      volume: volume ?? this.volume,
      inwardUoM: inwardUoM ?? this.inwardUoM,
      inwardPackQty: inwardPackQty ?? this.inwardPackQty,
      outwardUoM: outwardUoM ?? this.outwardUoM,
      outwardPackQty: outwardPackQty ?? this.outwardPackQty,
      isPerishable: isPerishable ?? this.isPerishable,
      hasExpiryDate: hasExpiryDate ?? this.hasExpiryDate,
      expiryDays: expiryDays ?? this.expiryDays,
      isFragile: isFragile ?? this.isFragile,
      manageBy: manageBy ?? this.manageBy,
      createdDateTime: createdDateTime ?? this.createdDateTime,
      color: color ?? this.color,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (IMid.present) {
      map['i_mid'] = Variable<int>(IMid.value);
    }
    if (auditScheduleID.present) {
      map['AuditSchedule_ID'] = Variable<int>(auditScheduleID.value);
    }
    if (id.present) {
      map['Id'] = Variable<int>(id.value);
    }
    if (itemDisposition.present) {
      map['ItemDisposition'] = Variable<int>(itemDisposition.value);
    }
    if (dispId.present) {
      map['DispID'] = Variable<int>(dispId.value);
    }
    if (itemCode.present) {
      map['ItemCode'] = Variable<String>(itemCode.value);
    }
    if (itemType.present) {
      map['ItemType'] = Variable<String>(itemType.value);
    }
    if (itemName.present) {
      map['ItemName'] = Variable<String>(itemName.value);
    }
    if (category.present) {
      map['Category'] = Variable<String>(category.value);
    }
    if (subCategory.present) {
      map['SubCategory'] = Variable<String>(subCategory.value);
    }
    if (brand.present) {
      map['Brand'] = Variable<String>(brand.value);
    }
    if (itemDescription.present) {
      map['ItemDescription'] = Variable<String>(itemDescription.value);
    }
    if (modelNo.present) {
      map['ModelNo'] = Variable<String>(modelNo.value);
    }
    if (partCode.present) {
      map['PartCode'] = Variable<String>(partCode.value);
    }
    if (skucode.present) {
      map['Skucode'] = Variable<String>(skucode.value);
    }
    if (brandCode.present) {
      map['BrandCode'] = Variable<String>(brandCode.value);
    }
    if (itemGroup.present) {
      map['ItemGroup'] = Variable<String>(itemGroup.value);
    }
    if (specification.present) {
      map['Specification'] = Variable<String>(specification.value);
    }
    if (sizeCapacity.present) {
      map['SizeCapacity'] = Variable<String>(sizeCapacity.value);
    }
    if (clasification.present) {
      map['Clasification'] = Variable<String>(clasification.value);
    }
    if (updatedDateTime.present) {
      map['UpdatedDateTime'] = Variable<String>(updatedDateTime.value);
    }
    if (uoM.present) {
      map['UoM'] = Variable<String>(uoM.value);
    }
    if (taxRate.present) {
      map['TaxRate'] = Variable<double>(taxRate.value);
    }
    if (imageUrl1.present) {
      map['ImageURL'] = Variable<String>(imageUrl1.value);
    }
    if (textNote.present) {
      map['TextNote'] = Variable<String>(textNote.value);
    }
    if (status.present) {
      map['Status'] = Variable<String>(status.value);
    }
    if (movingType.present) {
      map['MovingType'] = Variable<int>(movingType.value);
    }
    if (traceId.present) {
      map['traceid'] = Variable<String>(traceId.value);
    }
    if (updatedBy.present) {
      map['UpdatedBy'] = Variable<String>(updatedBy.value);
    }
    if (createdBy.present) {
      map['CreatedBy'] = Variable<int>(createdBy.value);
    }
    if (lengthh.present) {
      map['Length'] = Variable<double>(lengthh.value);
    }
    if (width.present) {
      map['Width'] = Variable<double>(width.value);
    }
    if (height.present) {
      map['Height'] = Variable<double>(height.value);
    }
    if (weight.present) {
      map['Weight'] = Variable<double>(weight.value);
    }
    if (volume.present) {
      map['Volume'] = Variable<double>(volume.value);
    }
    if (inwardUoM.present) {
      map['InwardUoM'] = Variable<String>(inwardUoM.value);
    }
    if (inwardPackQty.present) {
      map['InwardPackQty'] = Variable<double>(inwardPackQty.value);
    }
    if (outwardUoM.present) {
      map['OutwardUoM'] = Variable<String>(outwardUoM.value);
    }
    if (outwardPackQty.present) {
      map['OutwardPackQty'] = Variable<double>(outwardPackQty.value);
    }
    if (isPerishable.present) {
      map['isPerishable'] = Variable<bool>(isPerishable.value);
    }
    if (hasExpiryDate.present) {
      map['hasExpiryDate'] = Variable<bool>(hasExpiryDate.value);
    }
    if (expiryDays.present) {
      map['ExpiryDays'] = Variable<int>(expiryDays.value);
    }
    if (isFragile.present) {
      map['isFragile'] = Variable<int>(isFragile.value);
    }
    if (manageBy.present) {
      map['ManageBy'] = Variable<String>(manageBy.value);
    }
    if (createdDateTime.present) {
      map['CreatedDateTime'] = Variable<String>(createdDateTime.value);
    }
    if (color.present) {
      map['Color'] = Variable<String>(color.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftItemMasterCompanion(')
          ..write('IMid: $IMid, ')
          ..write('auditScheduleID: $auditScheduleID, ')
          ..write('id: $id, ')
          ..write('itemDisposition: $itemDisposition, ')
          ..write('dispId: $dispId, ')
          ..write('itemCode: $itemCode, ')
          ..write('itemType: $itemType, ')
          ..write('itemName: $itemName, ')
          ..write('category: $category, ')
          ..write('subCategory: $subCategory, ')
          ..write('brand: $brand, ')
          ..write('itemDescription: $itemDescription, ')
          ..write('modelNo: $modelNo, ')
          ..write('partCode: $partCode, ')
          ..write('skucode: $skucode, ')
          ..write('brandCode: $brandCode, ')
          ..write('itemGroup: $itemGroup, ')
          ..write('specification: $specification, ')
          ..write('sizeCapacity: $sizeCapacity, ')
          ..write('clasification: $clasification, ')
          ..write('updatedDateTime: $updatedDateTime, ')
          ..write('uoM: $uoM, ')
          ..write('taxRate: $taxRate, ')
          ..write('imageUrl1: $imageUrl1, ')
          ..write('textNote: $textNote, ')
          ..write('status: $status, ')
          ..write('movingType: $movingType, ')
          ..write('traceId: $traceId, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('createdBy: $createdBy, ')
          ..write('lengthh: $lengthh, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('volume: $volume, ')
          ..write('inwardUoM: $inwardUoM, ')
          ..write('inwardPackQty: $inwardPackQty, ')
          ..write('outwardUoM: $outwardUoM, ')
          ..write('outwardPackQty: $outwardPackQty, ')
          ..write('isPerishable: $isPerishable, ')
          ..write('hasExpiryDate: $hasExpiryDate, ')
          ..write('expiryDays: $expiryDays, ')
          ..write('isFragile: $isFragile, ')
          ..write('manageBy: $manageBy, ')
          ..write('createdDateTime: $createdDateTime, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }
}

class $DriftLineMasterTable extends DriftLineMaster
    with TableInfo<$DriftLineMasterTable, DriftLineMasterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftLineMasterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _IMidMeta = const VerificationMeta('IMid');
  @override
  late final GeneratedColumn<int> IMid = GeneratedColumn<int>(
      'i_mid', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _autoIdMeta = const VerificationMeta('autoId');
  @override
  late final GeneratedColumn<int> autoId = GeneratedColumn<int>(
      'AutoID', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _scheduleIDMeta =
      const VerificationMeta('scheduleID');
  @override
  late final GeneratedColumn<int> scheduleID = GeneratedColumn<int>(
      'ScheduleID', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _whsCodeMeta =
      const VerificationMeta('whsCode');
  @override
  late final GeneratedColumn<String> whsCode = GeneratedColumn<String>(
      'WhsCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemDispositionMeta =
      const VerificationMeta('itemDisposition');
  @override
  late final GeneratedColumn<int> itemDisposition = GeneratedColumn<int>(
      'ItemDisposition', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _itemCodeMeta =
      const VerificationMeta('itemCode');
  @override
  late final GeneratedColumn<String> itemCode = GeneratedColumn<String>(
      'ItemCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _binCodeMeta =
      const VerificationMeta('binCode');
  @override
  late final GeneratedColumn<String> binCode = GeneratedColumn<String>(
      'BinCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _serialbatchMeta =
      const VerificationMeta('serialbatch');
  @override
  late final GeneratedColumn<String> serialbatch = GeneratedColumn<String>(
      'SerailBatch', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'Quantity', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _uomMeta = const VerificationMeta('uom');
  @override
  late final GeneratedColumn<String> uom = GeneratedColumn<String>(
      'UoM', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<int> createdBy = GeneratedColumn<int>(
      'CreatedBy', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _createdDatetimeMeta =
      const VerificationMeta('createdDatetime');
  @override
  late final GeneratedColumn<String> createdDatetime = GeneratedColumn<String>(
      'CreatedDatetime', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _inDateMeta = const VerificationMeta('inDate');
  @override
  late final GeneratedColumn<String> inDate = GeneratedColumn<String>(
      'InDate', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _expDateMeta =
      const VerificationMeta('expDate');
  @override
  late final GeneratedColumn<String> expDate = GeneratedColumn<String>(
      'ExpDate', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedByMeta =
      const VerificationMeta('updatedBy');
  @override
  late final GeneratedColumn<String> updatedBy = GeneratedColumn<String>(
      'UpdatedBy', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedDatetimeMeta =
      const VerificationMeta('updatedDatetime');
  @override
  late final GeneratedColumn<String> updatedDatetime = GeneratedColumn<String>(
      'UpdatedDatetime', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _traceidMeta =
      const VerificationMeta('traceid');
  @override
  late final GeneratedColumn<String> traceid = GeneratedColumn<String>(
      'traceid', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        IMid,
        autoId,
        scheduleID,
        whsCode,
        itemDisposition,
        itemCode,
        binCode,
        serialbatch,
        quantity,
        uom,
        createdBy,
        createdDatetime,
        inDate,
        expDate,
        updatedBy,
        updatedDatetime,
        traceid
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'driftstocksnapmaster';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftLineMasterData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('i_mid')) {
      context.handle(
          _IMidMeta, IMid.isAcceptableOrUnknown(data['i_mid']!, _IMidMeta));
    }
    if (data.containsKey('AutoID')) {
      context.handle(_autoIdMeta,
          autoId.isAcceptableOrUnknown(data['AutoID']!, _autoIdMeta));
    }
    if (data.containsKey('ScheduleID')) {
      context.handle(
          _scheduleIDMeta,
          scheduleID.isAcceptableOrUnknown(
              data['ScheduleID']!, _scheduleIDMeta));
    }
    if (data.containsKey('WhsCode')) {
      context.handle(_whsCodeMeta,
          whsCode.isAcceptableOrUnknown(data['WhsCode']!, _whsCodeMeta));
    }
    if (data.containsKey('ItemDisposition')) {
      context.handle(
          _itemDispositionMeta,
          itemDisposition.isAcceptableOrUnknown(
              data['ItemDisposition']!, _itemDispositionMeta));
    }
    if (data.containsKey('ItemCode')) {
      context.handle(_itemCodeMeta,
          itemCode.isAcceptableOrUnknown(data['ItemCode']!, _itemCodeMeta));
    }
    if (data.containsKey('BinCode')) {
      context.handle(_binCodeMeta,
          binCode.isAcceptableOrUnknown(data['BinCode']!, _binCodeMeta));
    }
    if (data.containsKey('SerailBatch')) {
      context.handle(
          _serialbatchMeta,
          serialbatch.isAcceptableOrUnknown(
              data['SerailBatch']!, _serialbatchMeta));
    }
    if (data.containsKey('Quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['Quantity']!, _quantityMeta));
    }
    if (data.containsKey('UoM')) {
      context.handle(
          _uomMeta, uom.isAcceptableOrUnknown(data['UoM']!, _uomMeta));
    }
    if (data.containsKey('CreatedBy')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['CreatedBy']!, _createdByMeta));
    }
    if (data.containsKey('CreatedDatetime')) {
      context.handle(
          _createdDatetimeMeta,
          createdDatetime.isAcceptableOrUnknown(
              data['CreatedDatetime']!, _createdDatetimeMeta));
    }
    if (data.containsKey('InDate')) {
      context.handle(_inDateMeta,
          inDate.isAcceptableOrUnknown(data['InDate']!, _inDateMeta));
    }
    if (data.containsKey('ExpDate')) {
      context.handle(_expDateMeta,
          expDate.isAcceptableOrUnknown(data['ExpDate']!, _expDateMeta));
    }
    if (data.containsKey('UpdatedBy')) {
      context.handle(_updatedByMeta,
          updatedBy.isAcceptableOrUnknown(data['UpdatedBy']!, _updatedByMeta));
    }
    if (data.containsKey('UpdatedDatetime')) {
      context.handle(
          _updatedDatetimeMeta,
          updatedDatetime.isAcceptableOrUnknown(
              data['UpdatedDatetime']!, _updatedDatetimeMeta));
    }
    if (data.containsKey('traceid')) {
      context.handle(_traceidMeta,
          traceid.isAcceptableOrUnknown(data['traceid']!, _traceidMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {IMid};
  @override
  DriftLineMasterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftLineMasterData(
      IMid: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}i_mid'])!,
      autoId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}AutoID']),
      scheduleID: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ScheduleID']),
      whsCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}WhsCode']),
      itemDisposition: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ItemDisposition']),
      itemCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ItemCode']),
      binCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}BinCode']),
      serialbatch: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}SerailBatch']),
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}Quantity']),
      uom: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}UoM']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CreatedBy']),
      createdDatetime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CreatedDatetime']),
      inDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}InDate']),
      expDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ExpDate']),
      updatedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}UpdatedBy']),
      updatedDatetime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}UpdatedDatetime']),
      traceid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}traceid']),
    );
  }

  @override
  $DriftLineMasterTable createAlias(String alias) {
    return $DriftLineMasterTable(attachedDatabase, alias);
  }
}

class DriftLineMasterData extends DataClass
    implements Insertable<DriftLineMasterData> {
  final int IMid;
  final int? autoId;
  final int? scheduleID;
  final String? whsCode;
  final int? itemDisposition;
  final String? itemCode;
  final String? binCode;
  final String? serialbatch;
  final double? quantity;
  final String? uom;
  final int? createdBy;
  final String? createdDatetime;
  final String? inDate;
  final String? expDate;
  final String? updatedBy;
  final String? updatedDatetime;
  final String? traceid;
  const DriftLineMasterData(
      {required this.IMid,
      this.autoId,
      this.scheduleID,
      this.whsCode,
      this.itemDisposition,
      this.itemCode,
      this.binCode,
      this.serialbatch,
      this.quantity,
      this.uom,
      this.createdBy,
      this.createdDatetime,
      this.inDate,
      this.expDate,
      this.updatedBy,
      this.updatedDatetime,
      this.traceid});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['i_mid'] = Variable<int>(IMid);
    if (!nullToAbsent || autoId != null) {
      map['AutoID'] = Variable<int>(autoId);
    }
    if (!nullToAbsent || scheduleID != null) {
      map['ScheduleID'] = Variable<int>(scheduleID);
    }
    if (!nullToAbsent || whsCode != null) {
      map['WhsCode'] = Variable<String>(whsCode);
    }
    if (!nullToAbsent || itemDisposition != null) {
      map['ItemDisposition'] = Variable<int>(itemDisposition);
    }
    if (!nullToAbsent || itemCode != null) {
      map['ItemCode'] = Variable<String>(itemCode);
    }
    if (!nullToAbsent || binCode != null) {
      map['BinCode'] = Variable<String>(binCode);
    }
    if (!nullToAbsent || serialbatch != null) {
      map['SerailBatch'] = Variable<String>(serialbatch);
    }
    if (!nullToAbsent || quantity != null) {
      map['Quantity'] = Variable<double>(quantity);
    }
    if (!nullToAbsent || uom != null) {
      map['UoM'] = Variable<String>(uom);
    }
    if (!nullToAbsent || createdBy != null) {
      map['CreatedBy'] = Variable<int>(createdBy);
    }
    if (!nullToAbsent || createdDatetime != null) {
      map['CreatedDatetime'] = Variable<String>(createdDatetime);
    }
    if (!nullToAbsent || inDate != null) {
      map['InDate'] = Variable<String>(inDate);
    }
    if (!nullToAbsent || expDate != null) {
      map['ExpDate'] = Variable<String>(expDate);
    }
    if (!nullToAbsent || updatedBy != null) {
      map['UpdatedBy'] = Variable<String>(updatedBy);
    }
    if (!nullToAbsent || updatedDatetime != null) {
      map['UpdatedDatetime'] = Variable<String>(updatedDatetime);
    }
    if (!nullToAbsent || traceid != null) {
      map['traceid'] = Variable<String>(traceid);
    }
    return map;
  }

  DriftLineMasterCompanion toCompanion(bool nullToAbsent) {
    return DriftLineMasterCompanion(
      IMid: Value(IMid),
      autoId:
          autoId == null && nullToAbsent ? const Value.absent() : Value(autoId),
      scheduleID: scheduleID == null && nullToAbsent
          ? const Value.absent()
          : Value(scheduleID),
      whsCode: whsCode == null && nullToAbsent
          ? const Value.absent()
          : Value(whsCode),
      itemDisposition: itemDisposition == null && nullToAbsent
          ? const Value.absent()
          : Value(itemDisposition),
      itemCode: itemCode == null && nullToAbsent
          ? const Value.absent()
          : Value(itemCode),
      binCode: binCode == null && nullToAbsent
          ? const Value.absent()
          : Value(binCode),
      serialbatch: serialbatch == null && nullToAbsent
          ? const Value.absent()
          : Value(serialbatch),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      uom: uom == null && nullToAbsent ? const Value.absent() : Value(uom),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      createdDatetime: createdDatetime == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDatetime),
      inDate:
          inDate == null && nullToAbsent ? const Value.absent() : Value(inDate),
      expDate: expDate == null && nullToAbsent
          ? const Value.absent()
          : Value(expDate),
      updatedBy: updatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedBy),
      updatedDatetime: updatedDatetime == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedDatetime),
      traceid: traceid == null && nullToAbsent
          ? const Value.absent()
          : Value(traceid),
    );
  }

  factory DriftLineMasterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftLineMasterData(
      IMid: serializer.fromJson<int>(json['IMid']),
      autoId: serializer.fromJson<int?>(json['autoId']),
      scheduleID: serializer.fromJson<int?>(json['scheduleID']),
      whsCode: serializer.fromJson<String?>(json['whsCode']),
      itemDisposition: serializer.fromJson<int?>(json['itemDisposition']),
      itemCode: serializer.fromJson<String?>(json['itemCode']),
      binCode: serializer.fromJson<String?>(json['binCode']),
      serialbatch: serializer.fromJson<String?>(json['serialbatch']),
      quantity: serializer.fromJson<double?>(json['quantity']),
      uom: serializer.fromJson<String?>(json['uom']),
      createdBy: serializer.fromJson<int?>(json['createdBy']),
      createdDatetime: serializer.fromJson<String?>(json['createdDatetime']),
      inDate: serializer.fromJson<String?>(json['inDate']),
      expDate: serializer.fromJson<String?>(json['expDate']),
      updatedBy: serializer.fromJson<String?>(json['updatedBy']),
      updatedDatetime: serializer.fromJson<String?>(json['updatedDatetime']),
      traceid: serializer.fromJson<String?>(json['traceid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'IMid': serializer.toJson<int>(IMid),
      'autoId': serializer.toJson<int?>(autoId),
      'scheduleID': serializer.toJson<int?>(scheduleID),
      'whsCode': serializer.toJson<String?>(whsCode),
      'itemDisposition': serializer.toJson<int?>(itemDisposition),
      'itemCode': serializer.toJson<String?>(itemCode),
      'binCode': serializer.toJson<String?>(binCode),
      'serialbatch': serializer.toJson<String?>(serialbatch),
      'quantity': serializer.toJson<double?>(quantity),
      'uom': serializer.toJson<String?>(uom),
      'createdBy': serializer.toJson<int?>(createdBy),
      'createdDatetime': serializer.toJson<String?>(createdDatetime),
      'inDate': serializer.toJson<String?>(inDate),
      'expDate': serializer.toJson<String?>(expDate),
      'updatedBy': serializer.toJson<String?>(updatedBy),
      'updatedDatetime': serializer.toJson<String?>(updatedDatetime),
      'traceid': serializer.toJson<String?>(traceid),
    };
  }

  DriftLineMasterData copyWith(
          {int? IMid,
          Value<int?> autoId = const Value.absent(),
          Value<int?> scheduleID = const Value.absent(),
          Value<String?> whsCode = const Value.absent(),
          Value<int?> itemDisposition = const Value.absent(),
          Value<String?> itemCode = const Value.absent(),
          Value<String?> binCode = const Value.absent(),
          Value<String?> serialbatch = const Value.absent(),
          Value<double?> quantity = const Value.absent(),
          Value<String?> uom = const Value.absent(),
          Value<int?> createdBy = const Value.absent(),
          Value<String?> createdDatetime = const Value.absent(),
          Value<String?> inDate = const Value.absent(),
          Value<String?> expDate = const Value.absent(),
          Value<String?> updatedBy = const Value.absent(),
          Value<String?> updatedDatetime = const Value.absent(),
          Value<String?> traceid = const Value.absent()}) =>
      DriftLineMasterData(
        IMid: IMid ?? this.IMid,
        autoId: autoId.present ? autoId.value : this.autoId,
        scheduleID: scheduleID.present ? scheduleID.value : this.scheduleID,
        whsCode: whsCode.present ? whsCode.value : this.whsCode,
        itemDisposition: itemDisposition.present
            ? itemDisposition.value
            : this.itemDisposition,
        itemCode: itemCode.present ? itemCode.value : this.itemCode,
        binCode: binCode.present ? binCode.value : this.binCode,
        serialbatch: serialbatch.present ? serialbatch.value : this.serialbatch,
        quantity: quantity.present ? quantity.value : this.quantity,
        uom: uom.present ? uom.value : this.uom,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        createdDatetime: createdDatetime.present
            ? createdDatetime.value
            : this.createdDatetime,
        inDate: inDate.present ? inDate.value : this.inDate,
        expDate: expDate.present ? expDate.value : this.expDate,
        updatedBy: updatedBy.present ? updatedBy.value : this.updatedBy,
        updatedDatetime: updatedDatetime.present
            ? updatedDatetime.value
            : this.updatedDatetime,
        traceid: traceid.present ? traceid.value : this.traceid,
      );
  DriftLineMasterData copyWithCompanion(DriftLineMasterCompanion data) {
    return DriftLineMasterData(
      IMid: data.IMid.present ? data.IMid.value : this.IMid,
      autoId: data.autoId.present ? data.autoId.value : this.autoId,
      scheduleID:
          data.scheduleID.present ? data.scheduleID.value : this.scheduleID,
      whsCode: data.whsCode.present ? data.whsCode.value : this.whsCode,
      itemDisposition: data.itemDisposition.present
          ? data.itemDisposition.value
          : this.itemDisposition,
      itemCode: data.itemCode.present ? data.itemCode.value : this.itemCode,
      binCode: data.binCode.present ? data.binCode.value : this.binCode,
      serialbatch:
          data.serialbatch.present ? data.serialbatch.value : this.serialbatch,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      uom: data.uom.present ? data.uom.value : this.uom,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      createdDatetime: data.createdDatetime.present
          ? data.createdDatetime.value
          : this.createdDatetime,
      inDate: data.inDate.present ? data.inDate.value : this.inDate,
      expDate: data.expDate.present ? data.expDate.value : this.expDate,
      updatedBy: data.updatedBy.present ? data.updatedBy.value : this.updatedBy,
      updatedDatetime: data.updatedDatetime.present
          ? data.updatedDatetime.value
          : this.updatedDatetime,
      traceid: data.traceid.present ? data.traceid.value : this.traceid,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftLineMasterData(')
          ..write('IMid: $IMid, ')
          ..write('autoId: $autoId, ')
          ..write('scheduleID: $scheduleID, ')
          ..write('whsCode: $whsCode, ')
          ..write('itemDisposition: $itemDisposition, ')
          ..write('itemCode: $itemCode, ')
          ..write('binCode: $binCode, ')
          ..write('serialbatch: $serialbatch, ')
          ..write('quantity: $quantity, ')
          ..write('uom: $uom, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDatetime: $createdDatetime, ')
          ..write('inDate: $inDate, ')
          ..write('expDate: $expDate, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('updatedDatetime: $updatedDatetime, ')
          ..write('traceid: $traceid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      IMid,
      autoId,
      scheduleID,
      whsCode,
      itemDisposition,
      itemCode,
      binCode,
      serialbatch,
      quantity,
      uom,
      createdBy,
      createdDatetime,
      inDate,
      expDate,
      updatedBy,
      updatedDatetime,
      traceid);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftLineMasterData &&
          other.IMid == this.IMid &&
          other.autoId == this.autoId &&
          other.scheduleID == this.scheduleID &&
          other.whsCode == this.whsCode &&
          other.itemDisposition == this.itemDisposition &&
          other.itemCode == this.itemCode &&
          other.binCode == this.binCode &&
          other.serialbatch == this.serialbatch &&
          other.quantity == this.quantity &&
          other.uom == this.uom &&
          other.createdBy == this.createdBy &&
          other.createdDatetime == this.createdDatetime &&
          other.inDate == this.inDate &&
          other.expDate == this.expDate &&
          other.updatedBy == this.updatedBy &&
          other.updatedDatetime == this.updatedDatetime &&
          other.traceid == this.traceid);
}

class DriftLineMasterCompanion extends UpdateCompanion<DriftLineMasterData> {
  final Value<int> IMid;
  final Value<int?> autoId;
  final Value<int?> scheduleID;
  final Value<String?> whsCode;
  final Value<int?> itemDisposition;
  final Value<String?> itemCode;
  final Value<String?> binCode;
  final Value<String?> serialbatch;
  final Value<double?> quantity;
  final Value<String?> uom;
  final Value<int?> createdBy;
  final Value<String?> createdDatetime;
  final Value<String?> inDate;
  final Value<String?> expDate;
  final Value<String?> updatedBy;
  final Value<String?> updatedDatetime;
  final Value<String?> traceid;
  const DriftLineMasterCompanion({
    this.IMid = const Value.absent(),
    this.autoId = const Value.absent(),
    this.scheduleID = const Value.absent(),
    this.whsCode = const Value.absent(),
    this.itemDisposition = const Value.absent(),
    this.itemCode = const Value.absent(),
    this.binCode = const Value.absent(),
    this.serialbatch = const Value.absent(),
    this.quantity = const Value.absent(),
    this.uom = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDatetime = const Value.absent(),
    this.inDate = const Value.absent(),
    this.expDate = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.updatedDatetime = const Value.absent(),
    this.traceid = const Value.absent(),
  });
  DriftLineMasterCompanion.insert({
    this.IMid = const Value.absent(),
    this.autoId = const Value.absent(),
    this.scheduleID = const Value.absent(),
    this.whsCode = const Value.absent(),
    this.itemDisposition = const Value.absent(),
    this.itemCode = const Value.absent(),
    this.binCode = const Value.absent(),
    this.serialbatch = const Value.absent(),
    this.quantity = const Value.absent(),
    this.uom = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDatetime = const Value.absent(),
    this.inDate = const Value.absent(),
    this.expDate = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.updatedDatetime = const Value.absent(),
    this.traceid = const Value.absent(),
  });
  static Insertable<DriftLineMasterData> custom({
    Expression<int>? IMid,
    Expression<int>? autoId,
    Expression<int>? scheduleID,
    Expression<String>? whsCode,
    Expression<int>? itemDisposition,
    Expression<String>? itemCode,
    Expression<String>? binCode,
    Expression<String>? serialbatch,
    Expression<double>? quantity,
    Expression<String>? uom,
    Expression<int>? createdBy,
    Expression<String>? createdDatetime,
    Expression<String>? inDate,
    Expression<String>? expDate,
    Expression<String>? updatedBy,
    Expression<String>? updatedDatetime,
    Expression<String>? traceid,
  }) {
    return RawValuesInsertable({
      if (IMid != null) 'i_mid': IMid,
      if (autoId != null) 'AutoID': autoId,
      if (scheduleID != null) 'ScheduleID': scheduleID,
      if (whsCode != null) 'WhsCode': whsCode,
      if (itemDisposition != null) 'ItemDisposition': itemDisposition,
      if (itemCode != null) 'ItemCode': itemCode,
      if (binCode != null) 'BinCode': binCode,
      if (serialbatch != null) 'SerailBatch': serialbatch,
      if (quantity != null) 'Quantity': quantity,
      if (uom != null) 'UoM': uom,
      if (createdBy != null) 'CreatedBy': createdBy,
      if (createdDatetime != null) 'CreatedDatetime': createdDatetime,
      if (inDate != null) 'InDate': inDate,
      if (expDate != null) 'ExpDate': expDate,
      if (updatedBy != null) 'UpdatedBy': updatedBy,
      if (updatedDatetime != null) 'UpdatedDatetime': updatedDatetime,
      if (traceid != null) 'traceid': traceid,
    });
  }

  DriftLineMasterCompanion copyWith(
      {Value<int>? IMid,
      Value<int?>? autoId,
      Value<int?>? scheduleID,
      Value<String?>? whsCode,
      Value<int?>? itemDisposition,
      Value<String?>? itemCode,
      Value<String?>? binCode,
      Value<String?>? serialbatch,
      Value<double?>? quantity,
      Value<String?>? uom,
      Value<int?>? createdBy,
      Value<String?>? createdDatetime,
      Value<String?>? inDate,
      Value<String?>? expDate,
      Value<String?>? updatedBy,
      Value<String?>? updatedDatetime,
      Value<String?>? traceid}) {
    return DriftLineMasterCompanion(
      IMid: IMid ?? this.IMid,
      autoId: autoId ?? this.autoId,
      scheduleID: scheduleID ?? this.scheduleID,
      whsCode: whsCode ?? this.whsCode,
      itemDisposition: itemDisposition ?? this.itemDisposition,
      itemCode: itemCode ?? this.itemCode,
      binCode: binCode ?? this.binCode,
      serialbatch: serialbatch ?? this.serialbatch,
      quantity: quantity ?? this.quantity,
      uom: uom ?? this.uom,
      createdBy: createdBy ?? this.createdBy,
      createdDatetime: createdDatetime ?? this.createdDatetime,
      inDate: inDate ?? this.inDate,
      expDate: expDate ?? this.expDate,
      updatedBy: updatedBy ?? this.updatedBy,
      updatedDatetime: updatedDatetime ?? this.updatedDatetime,
      traceid: traceid ?? this.traceid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (IMid.present) {
      map['i_mid'] = Variable<int>(IMid.value);
    }
    if (autoId.present) {
      map['AutoID'] = Variable<int>(autoId.value);
    }
    if (scheduleID.present) {
      map['ScheduleID'] = Variable<int>(scheduleID.value);
    }
    if (whsCode.present) {
      map['WhsCode'] = Variable<String>(whsCode.value);
    }
    if (itemDisposition.present) {
      map['ItemDisposition'] = Variable<int>(itemDisposition.value);
    }
    if (itemCode.present) {
      map['ItemCode'] = Variable<String>(itemCode.value);
    }
    if (binCode.present) {
      map['BinCode'] = Variable<String>(binCode.value);
    }
    if (serialbatch.present) {
      map['SerailBatch'] = Variable<String>(serialbatch.value);
    }
    if (quantity.present) {
      map['Quantity'] = Variable<double>(quantity.value);
    }
    if (uom.present) {
      map['UoM'] = Variable<String>(uom.value);
    }
    if (createdBy.present) {
      map['CreatedBy'] = Variable<int>(createdBy.value);
    }
    if (createdDatetime.present) {
      map['CreatedDatetime'] = Variable<String>(createdDatetime.value);
    }
    if (inDate.present) {
      map['InDate'] = Variable<String>(inDate.value);
    }
    if (expDate.present) {
      map['ExpDate'] = Variable<String>(expDate.value);
    }
    if (updatedBy.present) {
      map['UpdatedBy'] = Variable<String>(updatedBy.value);
    }
    if (updatedDatetime.present) {
      map['UpdatedDatetime'] = Variable<String>(updatedDatetime.value);
    }
    if (traceid.present) {
      map['traceid'] = Variable<String>(traceid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftLineMasterCompanion(')
          ..write('IMid: $IMid, ')
          ..write('autoId: $autoId, ')
          ..write('scheduleID: $scheduleID, ')
          ..write('whsCode: $whsCode, ')
          ..write('itemDisposition: $itemDisposition, ')
          ..write('itemCode: $itemCode, ')
          ..write('binCode: $binCode, ')
          ..write('serialbatch: $serialbatch, ')
          ..write('quantity: $quantity, ')
          ..write('uom: $uom, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDatetime: $createdDatetime, ')
          ..write('inDate: $inDate, ')
          ..write('expDate: $expDate, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('updatedDatetime: $updatedDatetime, ')
          ..write('traceid: $traceid')
          ..write(')'))
        .toString();
  }
}

class $DriftBinMasterTable extends DriftBinMaster
    with TableInfo<$DriftBinMasterTable, DriftBinMasterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftBinMasterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _areaCodeMeta =
      const VerificationMeta('areaCode');
  @override
  late final GeneratedColumn<String> areaCode = GeneratedColumn<String>(
      'AreaCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _auditIdMeta =
      const VerificationMeta('auditId');
  @override
  late final GeneratedColumn<int> auditId = GeneratedColumn<int>(
      'Auditid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _binCodeMeta =
      const VerificationMeta('binCode');
  @override
  late final GeneratedColumn<String> binCode = GeneratedColumn<String>(
      'Bincode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _rackCodeMeta =
      const VerificationMeta('rackCode');
  @override
  late final GeneratedColumn<String> rackCode = GeneratedColumn<String>(
      'RackCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'Status', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _whsCodeMeta =
      const VerificationMeta('whsCode');
  @override
  late final GeneratedColumn<String> whsCode = GeneratedColumn<String>(
      'Whscode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _zoneCodeMeta =
      const VerificationMeta('zoneCode');
  @override
  late final GeneratedColumn<String> zoneCode = GeneratedColumn<String>(
      'ZoneCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [areaCode, auditId, binCode, rackCode, status, whsCode, zoneCode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'driftbinmaster';
  @override
  VerificationContext validateIntegrity(Insertable<DriftBinMasterData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('AreaCode')) {
      context.handle(_areaCodeMeta,
          areaCode.isAcceptableOrUnknown(data['AreaCode']!, _areaCodeMeta));
    }
    if (data.containsKey('Auditid')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['Auditid']!, _auditIdMeta));
    }
    if (data.containsKey('Bincode')) {
      context.handle(_binCodeMeta,
          binCode.isAcceptableOrUnknown(data['Bincode']!, _binCodeMeta));
    }
    if (data.containsKey('RackCode')) {
      context.handle(_rackCodeMeta,
          rackCode.isAcceptableOrUnknown(data['RackCode']!, _rackCodeMeta));
    }
    if (data.containsKey('Status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['Status']!, _statusMeta));
    }
    if (data.containsKey('Whscode')) {
      context.handle(_whsCodeMeta,
          whsCode.isAcceptableOrUnknown(data['Whscode']!, _whsCodeMeta));
    }
    if (data.containsKey('ZoneCode')) {
      context.handle(_zoneCodeMeta,
          zoneCode.isAcceptableOrUnknown(data['ZoneCode']!, _zoneCodeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  DriftBinMasterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftBinMasterData(
      areaCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}AreaCode']),
      auditId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}Auditid']),
      binCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Bincode']),
      rackCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}RackCode']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}Status']),
      whsCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Whscode']),
      zoneCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ZoneCode']),
    );
  }

  @override
  $DriftBinMasterTable createAlias(String alias) {
    return $DriftBinMasterTable(attachedDatabase, alias);
  }
}

class DriftBinMasterData extends DataClass
    implements Insertable<DriftBinMasterData> {
  final String? areaCode;
  final int? auditId;
  final String? binCode;
  final String? rackCode;
  final int? status;
  final String? whsCode;
  final String? zoneCode;
  const DriftBinMasterData(
      {this.areaCode,
      this.auditId,
      this.binCode,
      this.rackCode,
      this.status,
      this.whsCode,
      this.zoneCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || areaCode != null) {
      map['AreaCode'] = Variable<String>(areaCode);
    }
    if (!nullToAbsent || auditId != null) {
      map['Auditid'] = Variable<int>(auditId);
    }
    if (!nullToAbsent || binCode != null) {
      map['Bincode'] = Variable<String>(binCode);
    }
    if (!nullToAbsent || rackCode != null) {
      map['RackCode'] = Variable<String>(rackCode);
    }
    if (!nullToAbsent || status != null) {
      map['Status'] = Variable<int>(status);
    }
    if (!nullToAbsent || whsCode != null) {
      map['Whscode'] = Variable<String>(whsCode);
    }
    if (!nullToAbsent || zoneCode != null) {
      map['ZoneCode'] = Variable<String>(zoneCode);
    }
    return map;
  }

  DriftBinMasterCompanion toCompanion(bool nullToAbsent) {
    return DriftBinMasterCompanion(
      areaCode: areaCode == null && nullToAbsent
          ? const Value.absent()
          : Value(areaCode),
      auditId: auditId == null && nullToAbsent
          ? const Value.absent()
          : Value(auditId),
      binCode: binCode == null && nullToAbsent
          ? const Value.absent()
          : Value(binCode),
      rackCode: rackCode == null && nullToAbsent
          ? const Value.absent()
          : Value(rackCode),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      whsCode: whsCode == null && nullToAbsent
          ? const Value.absent()
          : Value(whsCode),
      zoneCode: zoneCode == null && nullToAbsent
          ? const Value.absent()
          : Value(zoneCode),
    );
  }

  factory DriftBinMasterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftBinMasterData(
      areaCode: serializer.fromJson<String?>(json['areaCode']),
      auditId: serializer.fromJson<int?>(json['auditId']),
      binCode: serializer.fromJson<String?>(json['binCode']),
      rackCode: serializer.fromJson<String?>(json['rackCode']),
      status: serializer.fromJson<int?>(json['status']),
      whsCode: serializer.fromJson<String?>(json['whsCode']),
      zoneCode: serializer.fromJson<String?>(json['zoneCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'areaCode': serializer.toJson<String?>(areaCode),
      'auditId': serializer.toJson<int?>(auditId),
      'binCode': serializer.toJson<String?>(binCode),
      'rackCode': serializer.toJson<String?>(rackCode),
      'status': serializer.toJson<int?>(status),
      'whsCode': serializer.toJson<String?>(whsCode),
      'zoneCode': serializer.toJson<String?>(zoneCode),
    };
  }

  DriftBinMasterData copyWith(
          {Value<String?> areaCode = const Value.absent(),
          Value<int?> auditId = const Value.absent(),
          Value<String?> binCode = const Value.absent(),
          Value<String?> rackCode = const Value.absent(),
          Value<int?> status = const Value.absent(),
          Value<String?> whsCode = const Value.absent(),
          Value<String?> zoneCode = const Value.absent()}) =>
      DriftBinMasterData(
        areaCode: areaCode.present ? areaCode.value : this.areaCode,
        auditId: auditId.present ? auditId.value : this.auditId,
        binCode: binCode.present ? binCode.value : this.binCode,
        rackCode: rackCode.present ? rackCode.value : this.rackCode,
        status: status.present ? status.value : this.status,
        whsCode: whsCode.present ? whsCode.value : this.whsCode,
        zoneCode: zoneCode.present ? zoneCode.value : this.zoneCode,
      );
  DriftBinMasterData copyWithCompanion(DriftBinMasterCompanion data) {
    return DriftBinMasterData(
      areaCode: data.areaCode.present ? data.areaCode.value : this.areaCode,
      auditId: data.auditId.present ? data.auditId.value : this.auditId,
      binCode: data.binCode.present ? data.binCode.value : this.binCode,
      rackCode: data.rackCode.present ? data.rackCode.value : this.rackCode,
      status: data.status.present ? data.status.value : this.status,
      whsCode: data.whsCode.present ? data.whsCode.value : this.whsCode,
      zoneCode: data.zoneCode.present ? data.zoneCode.value : this.zoneCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftBinMasterData(')
          ..write('areaCode: $areaCode, ')
          ..write('auditId: $auditId, ')
          ..write('binCode: $binCode, ')
          ..write('rackCode: $rackCode, ')
          ..write('status: $status, ')
          ..write('whsCode: $whsCode, ')
          ..write('zoneCode: $zoneCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      areaCode, auditId, binCode, rackCode, status, whsCode, zoneCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftBinMasterData &&
          other.areaCode == this.areaCode &&
          other.auditId == this.auditId &&
          other.binCode == this.binCode &&
          other.rackCode == this.rackCode &&
          other.status == this.status &&
          other.whsCode == this.whsCode &&
          other.zoneCode == this.zoneCode);
}

class DriftBinMasterCompanion extends UpdateCompanion<DriftBinMasterData> {
  final Value<String?> areaCode;
  final Value<int?> auditId;
  final Value<String?> binCode;
  final Value<String?> rackCode;
  final Value<int?> status;
  final Value<String?> whsCode;
  final Value<String?> zoneCode;
  final Value<int> rowid;
  const DriftBinMasterCompanion({
    this.areaCode = const Value.absent(),
    this.auditId = const Value.absent(),
    this.binCode = const Value.absent(),
    this.rackCode = const Value.absent(),
    this.status = const Value.absent(),
    this.whsCode = const Value.absent(),
    this.zoneCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DriftBinMasterCompanion.insert({
    this.areaCode = const Value.absent(),
    this.auditId = const Value.absent(),
    this.binCode = const Value.absent(),
    this.rackCode = const Value.absent(),
    this.status = const Value.absent(),
    this.whsCode = const Value.absent(),
    this.zoneCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<DriftBinMasterData> custom({
    Expression<String>? areaCode,
    Expression<int>? auditId,
    Expression<String>? binCode,
    Expression<String>? rackCode,
    Expression<int>? status,
    Expression<String>? whsCode,
    Expression<String>? zoneCode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (areaCode != null) 'AreaCode': areaCode,
      if (auditId != null) 'Auditid': auditId,
      if (binCode != null) 'Bincode': binCode,
      if (rackCode != null) 'RackCode': rackCode,
      if (status != null) 'Status': status,
      if (whsCode != null) 'Whscode': whsCode,
      if (zoneCode != null) 'ZoneCode': zoneCode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DriftBinMasterCompanion copyWith(
      {Value<String?>? areaCode,
      Value<int?>? auditId,
      Value<String?>? binCode,
      Value<String?>? rackCode,
      Value<int?>? status,
      Value<String?>? whsCode,
      Value<String?>? zoneCode,
      Value<int>? rowid}) {
    return DriftBinMasterCompanion(
      areaCode: areaCode ?? this.areaCode,
      auditId: auditId ?? this.auditId,
      binCode: binCode ?? this.binCode,
      rackCode: rackCode ?? this.rackCode,
      status: status ?? this.status,
      whsCode: whsCode ?? this.whsCode,
      zoneCode: zoneCode ?? this.zoneCode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (areaCode.present) {
      map['AreaCode'] = Variable<String>(areaCode.value);
    }
    if (auditId.present) {
      map['Auditid'] = Variable<int>(auditId.value);
    }
    if (binCode.present) {
      map['Bincode'] = Variable<String>(binCode.value);
    }
    if (rackCode.present) {
      map['RackCode'] = Variable<String>(rackCode.value);
    }
    if (status.present) {
      map['Status'] = Variable<int>(status.value);
    }
    if (whsCode.present) {
      map['Whscode'] = Variable<String>(whsCode.value);
    }
    if (zoneCode.present) {
      map['ZoneCode'] = Variable<String>(zoneCode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftBinMasterCompanion(')
          ..write('areaCode: $areaCode, ')
          ..write('auditId: $auditId, ')
          ..write('binCode: $binCode, ')
          ..write('rackCode: $rackCode, ')
          ..write('status: $status, ')
          ..write('whsCode: $whsCode, ')
          ..write('zoneCode: $zoneCode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CheckListHeaderMasterTable extends CheckListHeaderMaster
    with TableInfo<$CheckListHeaderMasterTable, CheckListHeaderMasterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CheckListHeaderMasterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _areaCodeMeta =
      const VerificationMeta('areaCode');
  @override
  late final GeneratedColumn<String> areaCode = GeneratedColumn<String>(
      'AreaCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _docEntryMeta =
      const VerificationMeta('docEntry');
  @override
  late final GeneratedColumn<int> docEntry = GeneratedColumn<int>(
      'DocEntry', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _binCodeMeta =
      const VerificationMeta('binCode');
  @override
  late final GeneratedColumn<String> binCode = GeneratedColumn<String>(
      'BinCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _rackCodeMeta =
      const VerificationMeta('rackCode');
  @override
  late final GeneratedColumn<String> rackCode = GeneratedColumn<String>(
      'RackCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<bool> status = GeneratedColumn<bool>(
      'Status', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("Status" IN (0, 1))'));
  static const VerificationMeta _whsCodeMeta =
      const VerificationMeta('whsCode');
  @override
  late final GeneratedColumn<String> whsCode = GeneratedColumn<String>(
      'WhsCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _zoneCodeMeta =
      const VerificationMeta('zoneCode');
  @override
  late final GeneratedColumn<String> zoneCode = GeneratedColumn<String>(
      'ZoneCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'Category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
      'Brand', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<int> createdBy = GeneratedColumn<int>(
      'CreatedBy', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _createdDateTimeMeta =
      const VerificationMeta('createdDateTime');
  @override
  late final GeneratedColumn<String> createdDateTime = GeneratedColumn<String>(
      'CreatedDateTime', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _checklistTemplateMeta =
      const VerificationMeta('checklistTemplate');
  @override
  late final GeneratedColumn<int> checklistTemplate = GeneratedColumn<int>(
      'ChecklistTemplate', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _dispositionMeta =
      const VerificationMeta('disposition');
  @override
  late final GeneratedColumn<String> disposition = GeneratedColumn<String>(
      'Disposition', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _forAgesAboveMeta =
      const VerificationMeta('forAgesAbove');
  @override
  late final GeneratedColumn<int> forAgesAbove = GeneratedColumn<int>(
      'ForAgesAbove', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _hasExpiryDateMeta =
      const VerificationMeta('hasExpiryDate');
  @override
  late final GeneratedColumn<bool> hasExpiryDate = GeneratedColumn<bool>(
      'hasExpiryDate', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("hasExpiryDate" IN (0, 1))'));
  static const VerificationMeta _isFragileMeta =
      const VerificationMeta('isFragile');
  @override
  late final GeneratedColumn<int> isFragile = GeneratedColumn<int>(
      'isFragile', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _itemCodeMeta =
      const VerificationMeta('itemCode');
  @override
  late final GeneratedColumn<String> itemCode = GeneratedColumn<String>(
      'ItemCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemStatusMeta =
      const VerificationMeta('itemStatus');
  @override
  late final GeneratedColumn<String> itemStatus = GeneratedColumn<String>(
      'ItemStatus', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _manageByMeta =
      const VerificationMeta('manageBy');
  @override
  late final GeneratedColumn<String> manageBy = GeneratedColumn<String>(
      'ManageBy', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _previousDisputeMeta =
      const VerificationMeta('previousDispute');
  @override
  late final GeneratedColumn<bool> previousDispute = GeneratedColumn<bool>(
      'PreviousDispute', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("PreviousDispute" IN (0, 1))'));
  static const VerificationMeta _serialBatchManualTypedMeta =
      const VerificationMeta('serialBatchManualTyped');
  @override
  late final GeneratedColumn<bool> serialBatchManualTyped =
      GeneratedColumn<bool>('SerialBatchManualTyped', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("SerialBatchManualTyped" IN (0, 1))'));
  static const VerificationMeta _serialBatchMeta =
      const VerificationMeta('serialBatch');
  @override
  late final GeneratedColumn<String> serialBatch = GeneratedColumn<String>(
      'SerialBatch', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sizeCapacityMeta =
      const VerificationMeta('sizeCapacity');
  @override
  late final GeneratedColumn<String> sizeCapacity = GeneratedColumn<String>(
      'SizeCapacity', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _specificationMeta =
      const VerificationMeta('specification');
  @override
  late final GeneratedColumn<String> specification = GeneratedColumn<String>(
      'Specification', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _subCategoryMeta =
      const VerificationMeta('subCategory');
  @override
  late final GeneratedColumn<String> subCategory = GeneratedColumn<String>(
      'SubCategory', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedByMeta =
      const VerificationMeta('updatedBy');
  @override
  late final GeneratedColumn<String> updatedBy = GeneratedColumn<String>(
      'UpdatedBy', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedDateTimeMeta =
      const VerificationMeta('updatedDateTime');
  @override
  late final GeneratedColumn<String> updatedDateTime = GeneratedColumn<String>(
      'UpdatedDateTime', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _whileOfflineMeta =
      const VerificationMeta('whileOffline');
  @override
  late final GeneratedColumn<bool> whileOffline = GeneratedColumn<bool>(
      'WhileOffline', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("WhileOffline" IN (0, 1))'));
  static const VerificationMeta _traceidMeta =
      const VerificationMeta('traceid');
  @override
  late final GeneratedColumn<String> traceid = GeneratedColumn<String>(
      'traceid', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        areaCode,
        docEntry,
        binCode,
        rackCode,
        status,
        whsCode,
        zoneCode,
        category,
        brand,
        createdBy,
        createdDateTime,
        checklistTemplate,
        disposition,
        forAgesAbove,
        hasExpiryDate,
        isFragile,
        itemCode,
        itemStatus,
        manageBy,
        previousDispute,
        serialBatchManualTyped,
        serialBatch,
        sizeCapacity,
        specification,
        subCategory,
        updatedBy,
        updatedDateTime,
        whileOffline,
        traceid
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'driftchecklistheader';
  @override
  VerificationContext validateIntegrity(
      Insertable<CheckListHeaderMasterData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('AreaCode')) {
      context.handle(_areaCodeMeta,
          areaCode.isAcceptableOrUnknown(data['AreaCode']!, _areaCodeMeta));
    }
    if (data.containsKey('DocEntry')) {
      context.handle(_docEntryMeta,
          docEntry.isAcceptableOrUnknown(data['DocEntry']!, _docEntryMeta));
    }
    if (data.containsKey('BinCode')) {
      context.handle(_binCodeMeta,
          binCode.isAcceptableOrUnknown(data['BinCode']!, _binCodeMeta));
    }
    if (data.containsKey('RackCode')) {
      context.handle(_rackCodeMeta,
          rackCode.isAcceptableOrUnknown(data['RackCode']!, _rackCodeMeta));
    }
    if (data.containsKey('Status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['Status']!, _statusMeta));
    }
    if (data.containsKey('WhsCode')) {
      context.handle(_whsCodeMeta,
          whsCode.isAcceptableOrUnknown(data['WhsCode']!, _whsCodeMeta));
    }
    if (data.containsKey('ZoneCode')) {
      context.handle(_zoneCodeMeta,
          zoneCode.isAcceptableOrUnknown(data['ZoneCode']!, _zoneCodeMeta));
    }
    if (data.containsKey('Category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['Category']!, _categoryMeta));
    }
    if (data.containsKey('Brand')) {
      context.handle(
          _brandMeta, brand.isAcceptableOrUnknown(data['Brand']!, _brandMeta));
    }
    if (data.containsKey('CreatedBy')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['CreatedBy']!, _createdByMeta));
    }
    if (data.containsKey('CreatedDateTime')) {
      context.handle(
          _createdDateTimeMeta,
          createdDateTime.isAcceptableOrUnknown(
              data['CreatedDateTime']!, _createdDateTimeMeta));
    }
    if (data.containsKey('ChecklistTemplate')) {
      context.handle(
          _checklistTemplateMeta,
          checklistTemplate.isAcceptableOrUnknown(
              data['ChecklistTemplate']!, _checklistTemplateMeta));
    }
    if (data.containsKey('Disposition')) {
      context.handle(
          _dispositionMeta,
          disposition.isAcceptableOrUnknown(
              data['Disposition']!, _dispositionMeta));
    }
    if (data.containsKey('ForAgesAbove')) {
      context.handle(
          _forAgesAboveMeta,
          forAgesAbove.isAcceptableOrUnknown(
              data['ForAgesAbove']!, _forAgesAboveMeta));
    }
    if (data.containsKey('hasExpiryDate')) {
      context.handle(
          _hasExpiryDateMeta,
          hasExpiryDate.isAcceptableOrUnknown(
              data['hasExpiryDate']!, _hasExpiryDateMeta));
    }
    if (data.containsKey('isFragile')) {
      context.handle(_isFragileMeta,
          isFragile.isAcceptableOrUnknown(data['isFragile']!, _isFragileMeta));
    }
    if (data.containsKey('ItemCode')) {
      context.handle(_itemCodeMeta,
          itemCode.isAcceptableOrUnknown(data['ItemCode']!, _itemCodeMeta));
    }
    if (data.containsKey('ItemStatus')) {
      context.handle(
          _itemStatusMeta,
          itemStatus.isAcceptableOrUnknown(
              data['ItemStatus']!, _itemStatusMeta));
    }
    if (data.containsKey('ManageBy')) {
      context.handle(_manageByMeta,
          manageBy.isAcceptableOrUnknown(data['ManageBy']!, _manageByMeta));
    }
    if (data.containsKey('PreviousDispute')) {
      context.handle(
          _previousDisputeMeta,
          previousDispute.isAcceptableOrUnknown(
              data['PreviousDispute']!, _previousDisputeMeta));
    }
    if (data.containsKey('SerialBatchManualTyped')) {
      context.handle(
          _serialBatchManualTypedMeta,
          serialBatchManualTyped.isAcceptableOrUnknown(
              data['SerialBatchManualTyped']!, _serialBatchManualTypedMeta));
    }
    if (data.containsKey('SerialBatch')) {
      context.handle(
          _serialBatchMeta,
          serialBatch.isAcceptableOrUnknown(
              data['SerialBatch']!, _serialBatchMeta));
    }
    if (data.containsKey('SizeCapacity')) {
      context.handle(
          _sizeCapacityMeta,
          sizeCapacity.isAcceptableOrUnknown(
              data['SizeCapacity']!, _sizeCapacityMeta));
    }
    if (data.containsKey('Specification')) {
      context.handle(
          _specificationMeta,
          specification.isAcceptableOrUnknown(
              data['Specification']!, _specificationMeta));
    }
    if (data.containsKey('SubCategory')) {
      context.handle(
          _subCategoryMeta,
          subCategory.isAcceptableOrUnknown(
              data['SubCategory']!, _subCategoryMeta));
    }
    if (data.containsKey('UpdatedBy')) {
      context.handle(_updatedByMeta,
          updatedBy.isAcceptableOrUnknown(data['UpdatedBy']!, _updatedByMeta));
    }
    if (data.containsKey('UpdatedDateTime')) {
      context.handle(
          _updatedDateTimeMeta,
          updatedDateTime.isAcceptableOrUnknown(
              data['UpdatedDateTime']!, _updatedDateTimeMeta));
    }
    if (data.containsKey('WhileOffline')) {
      context.handle(
          _whileOfflineMeta,
          whileOffline.isAcceptableOrUnknown(
              data['WhileOffline']!, _whileOfflineMeta));
    }
    if (data.containsKey('traceid')) {
      context.handle(_traceidMeta,
          traceid.isAcceptableOrUnknown(data['traceid']!, _traceidMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  CheckListHeaderMasterData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CheckListHeaderMasterData(
      areaCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}AreaCode']),
      docEntry: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}DocEntry']),
      binCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}BinCode']),
      rackCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}RackCode']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}Status']),
      whsCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}WhsCode']),
      zoneCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ZoneCode']),
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Category']),
      brand: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Brand']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CreatedBy']),
      createdDateTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CreatedDateTime']),
      checklistTemplate: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ChecklistTemplate']),
      disposition: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Disposition']),
      forAgesAbove: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ForAgesAbove']),
      hasExpiryDate: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}hasExpiryDate']),
      isFragile: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}isFragile']),
      itemCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ItemCode']),
      itemStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ItemStatus']),
      manageBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ManageBy']),
      previousDispute: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}PreviousDispute']),
      serialBatchManualTyped: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}SerialBatchManualTyped']),
      serialBatch: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}SerialBatch']),
      sizeCapacity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}SizeCapacity']),
      specification: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Specification']),
      subCategory: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}SubCategory']),
      updatedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}UpdatedBy']),
      updatedDateTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}UpdatedDateTime']),
      whileOffline: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}WhileOffline']),
      traceid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}traceid']),
    );
  }

  @override
  $CheckListHeaderMasterTable createAlias(String alias) {
    return $CheckListHeaderMasterTable(attachedDatabase, alias);
  }
}

class CheckListHeaderMasterData extends DataClass
    implements Insertable<CheckListHeaderMasterData> {
  final String? areaCode;
  final int? docEntry;
  final String? binCode;
  final String? rackCode;
  final bool? status;
  final String? whsCode;
  final String? zoneCode;
  final String? category;
  final String? brand;
  final int? createdBy;
  final String? createdDateTime;
  final int? checklistTemplate;
  final String? disposition;
  final int? forAgesAbove;
  final bool? hasExpiryDate;
  final int? isFragile;
  final String? itemCode;
  final String? itemStatus;
  final String? manageBy;
  final bool? previousDispute;
  final bool? serialBatchManualTyped;
  final String? serialBatch;
  final String? sizeCapacity;
  final String? specification;
  final String? subCategory;
  final String? updatedBy;
  final String? updatedDateTime;
  final bool? whileOffline;
  final String? traceid;
  const CheckListHeaderMasterData(
      {this.areaCode,
      this.docEntry,
      this.binCode,
      this.rackCode,
      this.status,
      this.whsCode,
      this.zoneCode,
      this.category,
      this.brand,
      this.createdBy,
      this.createdDateTime,
      this.checklistTemplate,
      this.disposition,
      this.forAgesAbove,
      this.hasExpiryDate,
      this.isFragile,
      this.itemCode,
      this.itemStatus,
      this.manageBy,
      this.previousDispute,
      this.serialBatchManualTyped,
      this.serialBatch,
      this.sizeCapacity,
      this.specification,
      this.subCategory,
      this.updatedBy,
      this.updatedDateTime,
      this.whileOffline,
      this.traceid});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || areaCode != null) {
      map['AreaCode'] = Variable<String>(areaCode);
    }
    if (!nullToAbsent || docEntry != null) {
      map['DocEntry'] = Variable<int>(docEntry);
    }
    if (!nullToAbsent || binCode != null) {
      map['BinCode'] = Variable<String>(binCode);
    }
    if (!nullToAbsent || rackCode != null) {
      map['RackCode'] = Variable<String>(rackCode);
    }
    if (!nullToAbsent || status != null) {
      map['Status'] = Variable<bool>(status);
    }
    if (!nullToAbsent || whsCode != null) {
      map['WhsCode'] = Variable<String>(whsCode);
    }
    if (!nullToAbsent || zoneCode != null) {
      map['ZoneCode'] = Variable<String>(zoneCode);
    }
    if (!nullToAbsent || category != null) {
      map['Category'] = Variable<String>(category);
    }
    if (!nullToAbsent || brand != null) {
      map['Brand'] = Variable<String>(brand);
    }
    if (!nullToAbsent || createdBy != null) {
      map['CreatedBy'] = Variable<int>(createdBy);
    }
    if (!nullToAbsent || createdDateTime != null) {
      map['CreatedDateTime'] = Variable<String>(createdDateTime);
    }
    if (!nullToAbsent || checklistTemplate != null) {
      map['ChecklistTemplate'] = Variable<int>(checklistTemplate);
    }
    if (!nullToAbsent || disposition != null) {
      map['Disposition'] = Variable<String>(disposition);
    }
    if (!nullToAbsent || forAgesAbove != null) {
      map['ForAgesAbove'] = Variable<int>(forAgesAbove);
    }
    if (!nullToAbsent || hasExpiryDate != null) {
      map['hasExpiryDate'] = Variable<bool>(hasExpiryDate);
    }
    if (!nullToAbsent || isFragile != null) {
      map['isFragile'] = Variable<int>(isFragile);
    }
    if (!nullToAbsent || itemCode != null) {
      map['ItemCode'] = Variable<String>(itemCode);
    }
    if (!nullToAbsent || itemStatus != null) {
      map['ItemStatus'] = Variable<String>(itemStatus);
    }
    if (!nullToAbsent || manageBy != null) {
      map['ManageBy'] = Variable<String>(manageBy);
    }
    if (!nullToAbsent || previousDispute != null) {
      map['PreviousDispute'] = Variable<bool>(previousDispute);
    }
    if (!nullToAbsent || serialBatchManualTyped != null) {
      map['SerialBatchManualTyped'] = Variable<bool>(serialBatchManualTyped);
    }
    if (!nullToAbsent || serialBatch != null) {
      map['SerialBatch'] = Variable<String>(serialBatch);
    }
    if (!nullToAbsent || sizeCapacity != null) {
      map['SizeCapacity'] = Variable<String>(sizeCapacity);
    }
    if (!nullToAbsent || specification != null) {
      map['Specification'] = Variable<String>(specification);
    }
    if (!nullToAbsent || subCategory != null) {
      map['SubCategory'] = Variable<String>(subCategory);
    }
    if (!nullToAbsent || updatedBy != null) {
      map['UpdatedBy'] = Variable<String>(updatedBy);
    }
    if (!nullToAbsent || updatedDateTime != null) {
      map['UpdatedDateTime'] = Variable<String>(updatedDateTime);
    }
    if (!nullToAbsent || whileOffline != null) {
      map['WhileOffline'] = Variable<bool>(whileOffline);
    }
    if (!nullToAbsent || traceid != null) {
      map['traceid'] = Variable<String>(traceid);
    }
    return map;
  }

  CheckListHeaderMasterCompanion toCompanion(bool nullToAbsent) {
    return CheckListHeaderMasterCompanion(
      areaCode: areaCode == null && nullToAbsent
          ? const Value.absent()
          : Value(areaCode),
      docEntry: docEntry == null && nullToAbsent
          ? const Value.absent()
          : Value(docEntry),
      binCode: binCode == null && nullToAbsent
          ? const Value.absent()
          : Value(binCode),
      rackCode: rackCode == null && nullToAbsent
          ? const Value.absent()
          : Value(rackCode),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      whsCode: whsCode == null && nullToAbsent
          ? const Value.absent()
          : Value(whsCode),
      zoneCode: zoneCode == null && nullToAbsent
          ? const Value.absent()
          : Value(zoneCode),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      brand:
          brand == null && nullToAbsent ? const Value.absent() : Value(brand),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      createdDateTime: createdDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDateTime),
      checklistTemplate: checklistTemplate == null && nullToAbsent
          ? const Value.absent()
          : Value(checklistTemplate),
      disposition: disposition == null && nullToAbsent
          ? const Value.absent()
          : Value(disposition),
      forAgesAbove: forAgesAbove == null && nullToAbsent
          ? const Value.absent()
          : Value(forAgesAbove),
      hasExpiryDate: hasExpiryDate == null && nullToAbsent
          ? const Value.absent()
          : Value(hasExpiryDate),
      isFragile: isFragile == null && nullToAbsent
          ? const Value.absent()
          : Value(isFragile),
      itemCode: itemCode == null && nullToAbsent
          ? const Value.absent()
          : Value(itemCode),
      itemStatus: itemStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(itemStatus),
      manageBy: manageBy == null && nullToAbsent
          ? const Value.absent()
          : Value(manageBy),
      previousDispute: previousDispute == null && nullToAbsent
          ? const Value.absent()
          : Value(previousDispute),
      serialBatchManualTyped: serialBatchManualTyped == null && nullToAbsent
          ? const Value.absent()
          : Value(serialBatchManualTyped),
      serialBatch: serialBatch == null && nullToAbsent
          ? const Value.absent()
          : Value(serialBatch),
      sizeCapacity: sizeCapacity == null && nullToAbsent
          ? const Value.absent()
          : Value(sizeCapacity),
      specification: specification == null && nullToAbsent
          ? const Value.absent()
          : Value(specification),
      subCategory: subCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(subCategory),
      updatedBy: updatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedBy),
      updatedDateTime: updatedDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedDateTime),
      whileOffline: whileOffline == null && nullToAbsent
          ? const Value.absent()
          : Value(whileOffline),
      traceid: traceid == null && nullToAbsent
          ? const Value.absent()
          : Value(traceid),
    );
  }

  factory CheckListHeaderMasterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CheckListHeaderMasterData(
      areaCode: serializer.fromJson<String?>(json['areaCode']),
      docEntry: serializer.fromJson<int?>(json['docEntry']),
      binCode: serializer.fromJson<String?>(json['binCode']),
      rackCode: serializer.fromJson<String?>(json['rackCode']),
      status: serializer.fromJson<bool?>(json['status']),
      whsCode: serializer.fromJson<String?>(json['whsCode']),
      zoneCode: serializer.fromJson<String?>(json['zoneCode']),
      category: serializer.fromJson<String?>(json['category']),
      brand: serializer.fromJson<String?>(json['brand']),
      createdBy: serializer.fromJson<int?>(json['createdBy']),
      createdDateTime: serializer.fromJson<String?>(json['createdDateTime']),
      checklistTemplate: serializer.fromJson<int?>(json['checklistTemplate']),
      disposition: serializer.fromJson<String?>(json['disposition']),
      forAgesAbove: serializer.fromJson<int?>(json['forAgesAbove']),
      hasExpiryDate: serializer.fromJson<bool?>(json['hasExpiryDate']),
      isFragile: serializer.fromJson<int?>(json['isFragile']),
      itemCode: serializer.fromJson<String?>(json['itemCode']),
      itemStatus: serializer.fromJson<String?>(json['itemStatus']),
      manageBy: serializer.fromJson<String?>(json['manageBy']),
      previousDispute: serializer.fromJson<bool?>(json['previousDispute']),
      serialBatchManualTyped:
          serializer.fromJson<bool?>(json['serialBatchManualTyped']),
      serialBatch: serializer.fromJson<String?>(json['serialBatch']),
      sizeCapacity: serializer.fromJson<String?>(json['sizeCapacity']),
      specification: serializer.fromJson<String?>(json['specification']),
      subCategory: serializer.fromJson<String?>(json['subCategory']),
      updatedBy: serializer.fromJson<String?>(json['updatedBy']),
      updatedDateTime: serializer.fromJson<String?>(json['updatedDateTime']),
      whileOffline: serializer.fromJson<bool?>(json['whileOffline']),
      traceid: serializer.fromJson<String?>(json['traceid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'areaCode': serializer.toJson<String?>(areaCode),
      'docEntry': serializer.toJson<int?>(docEntry),
      'binCode': serializer.toJson<String?>(binCode),
      'rackCode': serializer.toJson<String?>(rackCode),
      'status': serializer.toJson<bool?>(status),
      'whsCode': serializer.toJson<String?>(whsCode),
      'zoneCode': serializer.toJson<String?>(zoneCode),
      'category': serializer.toJson<String?>(category),
      'brand': serializer.toJson<String?>(brand),
      'createdBy': serializer.toJson<int?>(createdBy),
      'createdDateTime': serializer.toJson<String?>(createdDateTime),
      'checklistTemplate': serializer.toJson<int?>(checklistTemplate),
      'disposition': serializer.toJson<String?>(disposition),
      'forAgesAbove': serializer.toJson<int?>(forAgesAbove),
      'hasExpiryDate': serializer.toJson<bool?>(hasExpiryDate),
      'isFragile': serializer.toJson<int?>(isFragile),
      'itemCode': serializer.toJson<String?>(itemCode),
      'itemStatus': serializer.toJson<String?>(itemStatus),
      'manageBy': serializer.toJson<String?>(manageBy),
      'previousDispute': serializer.toJson<bool?>(previousDispute),
      'serialBatchManualTyped':
          serializer.toJson<bool?>(serialBatchManualTyped),
      'serialBatch': serializer.toJson<String?>(serialBatch),
      'sizeCapacity': serializer.toJson<String?>(sizeCapacity),
      'specification': serializer.toJson<String?>(specification),
      'subCategory': serializer.toJson<String?>(subCategory),
      'updatedBy': serializer.toJson<String?>(updatedBy),
      'updatedDateTime': serializer.toJson<String?>(updatedDateTime),
      'whileOffline': serializer.toJson<bool?>(whileOffline),
      'traceid': serializer.toJson<String?>(traceid),
    };
  }

  CheckListHeaderMasterData copyWith(
          {Value<String?> areaCode = const Value.absent(),
          Value<int?> docEntry = const Value.absent(),
          Value<String?> binCode = const Value.absent(),
          Value<String?> rackCode = const Value.absent(),
          Value<bool?> status = const Value.absent(),
          Value<String?> whsCode = const Value.absent(),
          Value<String?> zoneCode = const Value.absent(),
          Value<String?> category = const Value.absent(),
          Value<String?> brand = const Value.absent(),
          Value<int?> createdBy = const Value.absent(),
          Value<String?> createdDateTime = const Value.absent(),
          Value<int?> checklistTemplate = const Value.absent(),
          Value<String?> disposition = const Value.absent(),
          Value<int?> forAgesAbove = const Value.absent(),
          Value<bool?> hasExpiryDate = const Value.absent(),
          Value<int?> isFragile = const Value.absent(),
          Value<String?> itemCode = const Value.absent(),
          Value<String?> itemStatus = const Value.absent(),
          Value<String?> manageBy = const Value.absent(),
          Value<bool?> previousDispute = const Value.absent(),
          Value<bool?> serialBatchManualTyped = const Value.absent(),
          Value<String?> serialBatch = const Value.absent(),
          Value<String?> sizeCapacity = const Value.absent(),
          Value<String?> specification = const Value.absent(),
          Value<String?> subCategory = const Value.absent(),
          Value<String?> updatedBy = const Value.absent(),
          Value<String?> updatedDateTime = const Value.absent(),
          Value<bool?> whileOffline = const Value.absent(),
          Value<String?> traceid = const Value.absent()}) =>
      CheckListHeaderMasterData(
        areaCode: areaCode.present ? areaCode.value : this.areaCode,
        docEntry: docEntry.present ? docEntry.value : this.docEntry,
        binCode: binCode.present ? binCode.value : this.binCode,
        rackCode: rackCode.present ? rackCode.value : this.rackCode,
        status: status.present ? status.value : this.status,
        whsCode: whsCode.present ? whsCode.value : this.whsCode,
        zoneCode: zoneCode.present ? zoneCode.value : this.zoneCode,
        category: category.present ? category.value : this.category,
        brand: brand.present ? brand.value : this.brand,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        createdDateTime: createdDateTime.present
            ? createdDateTime.value
            : this.createdDateTime,
        checklistTemplate: checklistTemplate.present
            ? checklistTemplate.value
            : this.checklistTemplate,
        disposition: disposition.present ? disposition.value : this.disposition,
        forAgesAbove:
            forAgesAbove.present ? forAgesAbove.value : this.forAgesAbove,
        hasExpiryDate:
            hasExpiryDate.present ? hasExpiryDate.value : this.hasExpiryDate,
        isFragile: isFragile.present ? isFragile.value : this.isFragile,
        itemCode: itemCode.present ? itemCode.value : this.itemCode,
        itemStatus: itemStatus.present ? itemStatus.value : this.itemStatus,
        manageBy: manageBy.present ? manageBy.value : this.manageBy,
        previousDispute: previousDispute.present
            ? previousDispute.value
            : this.previousDispute,
        serialBatchManualTyped: serialBatchManualTyped.present
            ? serialBatchManualTyped.value
            : this.serialBatchManualTyped,
        serialBatch: serialBatch.present ? serialBatch.value : this.serialBatch,
        sizeCapacity:
            sizeCapacity.present ? sizeCapacity.value : this.sizeCapacity,
        specification:
            specification.present ? specification.value : this.specification,
        subCategory: subCategory.present ? subCategory.value : this.subCategory,
        updatedBy: updatedBy.present ? updatedBy.value : this.updatedBy,
        updatedDateTime: updatedDateTime.present
            ? updatedDateTime.value
            : this.updatedDateTime,
        whileOffline:
            whileOffline.present ? whileOffline.value : this.whileOffline,
        traceid: traceid.present ? traceid.value : this.traceid,
      );
  CheckListHeaderMasterData copyWithCompanion(
      CheckListHeaderMasterCompanion data) {
    return CheckListHeaderMasterData(
      areaCode: data.areaCode.present ? data.areaCode.value : this.areaCode,
      docEntry: data.docEntry.present ? data.docEntry.value : this.docEntry,
      binCode: data.binCode.present ? data.binCode.value : this.binCode,
      rackCode: data.rackCode.present ? data.rackCode.value : this.rackCode,
      status: data.status.present ? data.status.value : this.status,
      whsCode: data.whsCode.present ? data.whsCode.value : this.whsCode,
      zoneCode: data.zoneCode.present ? data.zoneCode.value : this.zoneCode,
      category: data.category.present ? data.category.value : this.category,
      brand: data.brand.present ? data.brand.value : this.brand,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      createdDateTime: data.createdDateTime.present
          ? data.createdDateTime.value
          : this.createdDateTime,
      checklistTemplate: data.checklistTemplate.present
          ? data.checklistTemplate.value
          : this.checklistTemplate,
      disposition:
          data.disposition.present ? data.disposition.value : this.disposition,
      forAgesAbove: data.forAgesAbove.present
          ? data.forAgesAbove.value
          : this.forAgesAbove,
      hasExpiryDate: data.hasExpiryDate.present
          ? data.hasExpiryDate.value
          : this.hasExpiryDate,
      isFragile: data.isFragile.present ? data.isFragile.value : this.isFragile,
      itemCode: data.itemCode.present ? data.itemCode.value : this.itemCode,
      itemStatus:
          data.itemStatus.present ? data.itemStatus.value : this.itemStatus,
      manageBy: data.manageBy.present ? data.manageBy.value : this.manageBy,
      previousDispute: data.previousDispute.present
          ? data.previousDispute.value
          : this.previousDispute,
      serialBatchManualTyped: data.serialBatchManualTyped.present
          ? data.serialBatchManualTyped.value
          : this.serialBatchManualTyped,
      serialBatch:
          data.serialBatch.present ? data.serialBatch.value : this.serialBatch,
      sizeCapacity: data.sizeCapacity.present
          ? data.sizeCapacity.value
          : this.sizeCapacity,
      specification: data.specification.present
          ? data.specification.value
          : this.specification,
      subCategory:
          data.subCategory.present ? data.subCategory.value : this.subCategory,
      updatedBy: data.updatedBy.present ? data.updatedBy.value : this.updatedBy,
      updatedDateTime: data.updatedDateTime.present
          ? data.updatedDateTime.value
          : this.updatedDateTime,
      whileOffline: data.whileOffline.present
          ? data.whileOffline.value
          : this.whileOffline,
      traceid: data.traceid.present ? data.traceid.value : this.traceid,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CheckListHeaderMasterData(')
          ..write('areaCode: $areaCode, ')
          ..write('docEntry: $docEntry, ')
          ..write('binCode: $binCode, ')
          ..write('rackCode: $rackCode, ')
          ..write('status: $status, ')
          ..write('whsCode: $whsCode, ')
          ..write('zoneCode: $zoneCode, ')
          ..write('category: $category, ')
          ..write('brand: $brand, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDateTime: $createdDateTime, ')
          ..write('checklistTemplate: $checklistTemplate, ')
          ..write('disposition: $disposition, ')
          ..write('forAgesAbove: $forAgesAbove, ')
          ..write('hasExpiryDate: $hasExpiryDate, ')
          ..write('isFragile: $isFragile, ')
          ..write('itemCode: $itemCode, ')
          ..write('itemStatus: $itemStatus, ')
          ..write('manageBy: $manageBy, ')
          ..write('previousDispute: $previousDispute, ')
          ..write('serialBatchManualTyped: $serialBatchManualTyped, ')
          ..write('serialBatch: $serialBatch, ')
          ..write('sizeCapacity: $sizeCapacity, ')
          ..write('specification: $specification, ')
          ..write('subCategory: $subCategory, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('updatedDateTime: $updatedDateTime, ')
          ..write('whileOffline: $whileOffline, ')
          ..write('traceid: $traceid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        areaCode,
        docEntry,
        binCode,
        rackCode,
        status,
        whsCode,
        zoneCode,
        category,
        brand,
        createdBy,
        createdDateTime,
        checklistTemplate,
        disposition,
        forAgesAbove,
        hasExpiryDate,
        isFragile,
        itemCode,
        itemStatus,
        manageBy,
        previousDispute,
        serialBatchManualTyped,
        serialBatch,
        sizeCapacity,
        specification,
        subCategory,
        updatedBy,
        updatedDateTime,
        whileOffline,
        traceid
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CheckListHeaderMasterData &&
          other.areaCode == this.areaCode &&
          other.docEntry == this.docEntry &&
          other.binCode == this.binCode &&
          other.rackCode == this.rackCode &&
          other.status == this.status &&
          other.whsCode == this.whsCode &&
          other.zoneCode == this.zoneCode &&
          other.category == this.category &&
          other.brand == this.brand &&
          other.createdBy == this.createdBy &&
          other.createdDateTime == this.createdDateTime &&
          other.checklistTemplate == this.checklistTemplate &&
          other.disposition == this.disposition &&
          other.forAgesAbove == this.forAgesAbove &&
          other.hasExpiryDate == this.hasExpiryDate &&
          other.isFragile == this.isFragile &&
          other.itemCode == this.itemCode &&
          other.itemStatus == this.itemStatus &&
          other.manageBy == this.manageBy &&
          other.previousDispute == this.previousDispute &&
          other.serialBatchManualTyped == this.serialBatchManualTyped &&
          other.serialBatch == this.serialBatch &&
          other.sizeCapacity == this.sizeCapacity &&
          other.specification == this.specification &&
          other.subCategory == this.subCategory &&
          other.updatedBy == this.updatedBy &&
          other.updatedDateTime == this.updatedDateTime &&
          other.whileOffline == this.whileOffline &&
          other.traceid == this.traceid);
}

class CheckListHeaderMasterCompanion
    extends UpdateCompanion<CheckListHeaderMasterData> {
  final Value<String?> areaCode;
  final Value<int?> docEntry;
  final Value<String?> binCode;
  final Value<String?> rackCode;
  final Value<bool?> status;
  final Value<String?> whsCode;
  final Value<String?> zoneCode;
  final Value<String?> category;
  final Value<String?> brand;
  final Value<int?> createdBy;
  final Value<String?> createdDateTime;
  final Value<int?> checklistTemplate;
  final Value<String?> disposition;
  final Value<int?> forAgesAbove;
  final Value<bool?> hasExpiryDate;
  final Value<int?> isFragile;
  final Value<String?> itemCode;
  final Value<String?> itemStatus;
  final Value<String?> manageBy;
  final Value<bool?> previousDispute;
  final Value<bool?> serialBatchManualTyped;
  final Value<String?> serialBatch;
  final Value<String?> sizeCapacity;
  final Value<String?> specification;
  final Value<String?> subCategory;
  final Value<String?> updatedBy;
  final Value<String?> updatedDateTime;
  final Value<bool?> whileOffline;
  final Value<String?> traceid;
  final Value<int> rowid;
  const CheckListHeaderMasterCompanion({
    this.areaCode = const Value.absent(),
    this.docEntry = const Value.absent(),
    this.binCode = const Value.absent(),
    this.rackCode = const Value.absent(),
    this.status = const Value.absent(),
    this.whsCode = const Value.absent(),
    this.zoneCode = const Value.absent(),
    this.category = const Value.absent(),
    this.brand = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDateTime = const Value.absent(),
    this.checklistTemplate = const Value.absent(),
    this.disposition = const Value.absent(),
    this.forAgesAbove = const Value.absent(),
    this.hasExpiryDate = const Value.absent(),
    this.isFragile = const Value.absent(),
    this.itemCode = const Value.absent(),
    this.itemStatus = const Value.absent(),
    this.manageBy = const Value.absent(),
    this.previousDispute = const Value.absent(),
    this.serialBatchManualTyped = const Value.absent(),
    this.serialBatch = const Value.absent(),
    this.sizeCapacity = const Value.absent(),
    this.specification = const Value.absent(),
    this.subCategory = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.updatedDateTime = const Value.absent(),
    this.whileOffline = const Value.absent(),
    this.traceid = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CheckListHeaderMasterCompanion.insert({
    this.areaCode = const Value.absent(),
    this.docEntry = const Value.absent(),
    this.binCode = const Value.absent(),
    this.rackCode = const Value.absent(),
    this.status = const Value.absent(),
    this.whsCode = const Value.absent(),
    this.zoneCode = const Value.absent(),
    this.category = const Value.absent(),
    this.brand = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDateTime = const Value.absent(),
    this.checklistTemplate = const Value.absent(),
    this.disposition = const Value.absent(),
    this.forAgesAbove = const Value.absent(),
    this.hasExpiryDate = const Value.absent(),
    this.isFragile = const Value.absent(),
    this.itemCode = const Value.absent(),
    this.itemStatus = const Value.absent(),
    this.manageBy = const Value.absent(),
    this.previousDispute = const Value.absent(),
    this.serialBatchManualTyped = const Value.absent(),
    this.serialBatch = const Value.absent(),
    this.sizeCapacity = const Value.absent(),
    this.specification = const Value.absent(),
    this.subCategory = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.updatedDateTime = const Value.absent(),
    this.whileOffline = const Value.absent(),
    this.traceid = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<CheckListHeaderMasterData> custom({
    Expression<String>? areaCode,
    Expression<int>? docEntry,
    Expression<String>? binCode,
    Expression<String>? rackCode,
    Expression<bool>? status,
    Expression<String>? whsCode,
    Expression<String>? zoneCode,
    Expression<String>? category,
    Expression<String>? brand,
    Expression<int>? createdBy,
    Expression<String>? createdDateTime,
    Expression<int>? checklistTemplate,
    Expression<String>? disposition,
    Expression<int>? forAgesAbove,
    Expression<bool>? hasExpiryDate,
    Expression<int>? isFragile,
    Expression<String>? itemCode,
    Expression<String>? itemStatus,
    Expression<String>? manageBy,
    Expression<bool>? previousDispute,
    Expression<bool>? serialBatchManualTyped,
    Expression<String>? serialBatch,
    Expression<String>? sizeCapacity,
    Expression<String>? specification,
    Expression<String>? subCategory,
    Expression<String>? updatedBy,
    Expression<String>? updatedDateTime,
    Expression<bool>? whileOffline,
    Expression<String>? traceid,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (areaCode != null) 'AreaCode': areaCode,
      if (docEntry != null) 'DocEntry': docEntry,
      if (binCode != null) 'BinCode': binCode,
      if (rackCode != null) 'RackCode': rackCode,
      if (status != null) 'Status': status,
      if (whsCode != null) 'WhsCode': whsCode,
      if (zoneCode != null) 'ZoneCode': zoneCode,
      if (category != null) 'Category': category,
      if (brand != null) 'Brand': brand,
      if (createdBy != null) 'CreatedBy': createdBy,
      if (createdDateTime != null) 'CreatedDateTime': createdDateTime,
      if (checklistTemplate != null) 'ChecklistTemplate': checklistTemplate,
      if (disposition != null) 'Disposition': disposition,
      if (forAgesAbove != null) 'ForAgesAbove': forAgesAbove,
      if (hasExpiryDate != null) 'hasExpiryDate': hasExpiryDate,
      if (isFragile != null) 'isFragile': isFragile,
      if (itemCode != null) 'ItemCode': itemCode,
      if (itemStatus != null) 'ItemStatus': itemStatus,
      if (manageBy != null) 'ManageBy': manageBy,
      if (previousDispute != null) 'PreviousDispute': previousDispute,
      if (serialBatchManualTyped != null)
        'SerialBatchManualTyped': serialBatchManualTyped,
      if (serialBatch != null) 'SerialBatch': serialBatch,
      if (sizeCapacity != null) 'SizeCapacity': sizeCapacity,
      if (specification != null) 'Specification': specification,
      if (subCategory != null) 'SubCategory': subCategory,
      if (updatedBy != null) 'UpdatedBy': updatedBy,
      if (updatedDateTime != null) 'UpdatedDateTime': updatedDateTime,
      if (whileOffline != null) 'WhileOffline': whileOffline,
      if (traceid != null) 'traceid': traceid,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CheckListHeaderMasterCompanion copyWith(
      {Value<String?>? areaCode,
      Value<int?>? docEntry,
      Value<String?>? binCode,
      Value<String?>? rackCode,
      Value<bool?>? status,
      Value<String?>? whsCode,
      Value<String?>? zoneCode,
      Value<String?>? category,
      Value<String?>? brand,
      Value<int?>? createdBy,
      Value<String?>? createdDateTime,
      Value<int?>? checklistTemplate,
      Value<String?>? disposition,
      Value<int?>? forAgesAbove,
      Value<bool?>? hasExpiryDate,
      Value<int?>? isFragile,
      Value<String?>? itemCode,
      Value<String?>? itemStatus,
      Value<String?>? manageBy,
      Value<bool?>? previousDispute,
      Value<bool?>? serialBatchManualTyped,
      Value<String?>? serialBatch,
      Value<String?>? sizeCapacity,
      Value<String?>? specification,
      Value<String?>? subCategory,
      Value<String?>? updatedBy,
      Value<String?>? updatedDateTime,
      Value<bool?>? whileOffline,
      Value<String?>? traceid,
      Value<int>? rowid}) {
    return CheckListHeaderMasterCompanion(
      areaCode: areaCode ?? this.areaCode,
      docEntry: docEntry ?? this.docEntry,
      binCode: binCode ?? this.binCode,
      rackCode: rackCode ?? this.rackCode,
      status: status ?? this.status,
      whsCode: whsCode ?? this.whsCode,
      zoneCode: zoneCode ?? this.zoneCode,
      category: category ?? this.category,
      brand: brand ?? this.brand,
      createdBy: createdBy ?? this.createdBy,
      createdDateTime: createdDateTime ?? this.createdDateTime,
      checklistTemplate: checklistTemplate ?? this.checklistTemplate,
      disposition: disposition ?? this.disposition,
      forAgesAbove: forAgesAbove ?? this.forAgesAbove,
      hasExpiryDate: hasExpiryDate ?? this.hasExpiryDate,
      isFragile: isFragile ?? this.isFragile,
      itemCode: itemCode ?? this.itemCode,
      itemStatus: itemStatus ?? this.itemStatus,
      manageBy: manageBy ?? this.manageBy,
      previousDispute: previousDispute ?? this.previousDispute,
      serialBatchManualTyped:
          serialBatchManualTyped ?? this.serialBatchManualTyped,
      serialBatch: serialBatch ?? this.serialBatch,
      sizeCapacity: sizeCapacity ?? this.sizeCapacity,
      specification: specification ?? this.specification,
      subCategory: subCategory ?? this.subCategory,
      updatedBy: updatedBy ?? this.updatedBy,
      updatedDateTime: updatedDateTime ?? this.updatedDateTime,
      whileOffline: whileOffline ?? this.whileOffline,
      traceid: traceid ?? this.traceid,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (areaCode.present) {
      map['AreaCode'] = Variable<String>(areaCode.value);
    }
    if (docEntry.present) {
      map['DocEntry'] = Variable<int>(docEntry.value);
    }
    if (binCode.present) {
      map['BinCode'] = Variable<String>(binCode.value);
    }
    if (rackCode.present) {
      map['RackCode'] = Variable<String>(rackCode.value);
    }
    if (status.present) {
      map['Status'] = Variable<bool>(status.value);
    }
    if (whsCode.present) {
      map['WhsCode'] = Variable<String>(whsCode.value);
    }
    if (zoneCode.present) {
      map['ZoneCode'] = Variable<String>(zoneCode.value);
    }
    if (category.present) {
      map['Category'] = Variable<String>(category.value);
    }
    if (brand.present) {
      map['Brand'] = Variable<String>(brand.value);
    }
    if (createdBy.present) {
      map['CreatedBy'] = Variable<int>(createdBy.value);
    }
    if (createdDateTime.present) {
      map['CreatedDateTime'] = Variable<String>(createdDateTime.value);
    }
    if (checklistTemplate.present) {
      map['ChecklistTemplate'] = Variable<int>(checklistTemplate.value);
    }
    if (disposition.present) {
      map['Disposition'] = Variable<String>(disposition.value);
    }
    if (forAgesAbove.present) {
      map['ForAgesAbove'] = Variable<int>(forAgesAbove.value);
    }
    if (hasExpiryDate.present) {
      map['hasExpiryDate'] = Variable<bool>(hasExpiryDate.value);
    }
    if (isFragile.present) {
      map['isFragile'] = Variable<int>(isFragile.value);
    }
    if (itemCode.present) {
      map['ItemCode'] = Variable<String>(itemCode.value);
    }
    if (itemStatus.present) {
      map['ItemStatus'] = Variable<String>(itemStatus.value);
    }
    if (manageBy.present) {
      map['ManageBy'] = Variable<String>(manageBy.value);
    }
    if (previousDispute.present) {
      map['PreviousDispute'] = Variable<bool>(previousDispute.value);
    }
    if (serialBatchManualTyped.present) {
      map['SerialBatchManualTyped'] =
          Variable<bool>(serialBatchManualTyped.value);
    }
    if (serialBatch.present) {
      map['SerialBatch'] = Variable<String>(serialBatch.value);
    }
    if (sizeCapacity.present) {
      map['SizeCapacity'] = Variable<String>(sizeCapacity.value);
    }
    if (specification.present) {
      map['Specification'] = Variable<String>(specification.value);
    }
    if (subCategory.present) {
      map['SubCategory'] = Variable<String>(subCategory.value);
    }
    if (updatedBy.present) {
      map['UpdatedBy'] = Variable<String>(updatedBy.value);
    }
    if (updatedDateTime.present) {
      map['UpdatedDateTime'] = Variable<String>(updatedDateTime.value);
    }
    if (whileOffline.present) {
      map['WhileOffline'] = Variable<bool>(whileOffline.value);
    }
    if (traceid.present) {
      map['traceid'] = Variable<String>(traceid.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CheckListHeaderMasterCompanion(')
          ..write('areaCode: $areaCode, ')
          ..write('docEntry: $docEntry, ')
          ..write('binCode: $binCode, ')
          ..write('rackCode: $rackCode, ')
          ..write('status: $status, ')
          ..write('whsCode: $whsCode, ')
          ..write('zoneCode: $zoneCode, ')
          ..write('category: $category, ')
          ..write('brand: $brand, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDateTime: $createdDateTime, ')
          ..write('checklistTemplate: $checklistTemplate, ')
          ..write('disposition: $disposition, ')
          ..write('forAgesAbove: $forAgesAbove, ')
          ..write('hasExpiryDate: $hasExpiryDate, ')
          ..write('isFragile: $isFragile, ')
          ..write('itemCode: $itemCode, ')
          ..write('itemStatus: $itemStatus, ')
          ..write('manageBy: $manageBy, ')
          ..write('previousDispute: $previousDispute, ')
          ..write('serialBatchManualTyped: $serialBatchManualTyped, ')
          ..write('serialBatch: $serialBatch, ')
          ..write('sizeCapacity: $sizeCapacity, ')
          ..write('specification: $specification, ')
          ..write('subCategory: $subCategory, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('updatedDateTime: $updatedDateTime, ')
          ..write('whileOffline: $whileOffline, ')
          ..write('traceid: $traceid, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DriftCheckLineMasterTable extends DriftCheckLineMaster
    with TableInfo<$DriftCheckLineMasterTable, DriftCheckLineMasterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftCheckLineMasterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _docEntryMeta =
      const VerificationMeta('docEntry');
  @override
  late final GeneratedColumn<int> docEntry = GeneratedColumn<int>(
      'docEntry', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _docEntry1Meta =
      const VerificationMeta('docEntry1');
  @override
  late final GeneratedColumn<int> docEntry1 = GeneratedColumn<int>(
      'docEntry1', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _templateNameMeta =
      const VerificationMeta('templateName');
  @override
  late final GeneratedColumn<String> templateName = GeneratedColumn<String>(
      'templateName', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _checklistCodeMeta =
      const VerificationMeta('checklistCode');
  @override
  late final GeneratedColumn<String> checklistCode = GeneratedColumn<String>(
      'checklistCode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _checklistNameMeta =
      const VerificationMeta('checklistName');
  @override
  late final GeneratedColumn<String> checklistName = GeneratedColumn<String>(
      'checklistName', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _listValueMeta =
      const VerificationMeta('listValue');
  @override
  late final GeneratedColumn<String> listValue = GeneratedColumn<String>(
      'listValue', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _acceptAttachMeta =
      const VerificationMeta('acceptAttach');
  @override
  late final GeneratedColumn<bool> acceptAttach = GeneratedColumn<bool>(
      'acceptAttach', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("acceptAttach" IN (0, 1))'));
  static const VerificationMeta _acceptMultiValueMeta =
      const VerificationMeta('acceptMultiValue');
  @override
  late final GeneratedColumn<bool> acceptMultiValue = GeneratedColumn<bool>(
      'acceptMultiValue', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("acceptMultiValue" IN (0, 1))'));
  static const VerificationMeta _isMandaoryMeta =
      const VerificationMeta('isMandaory');
  @override
  late final GeneratedColumn<bool> isMandaory = GeneratedColumn<bool>(
      'isMandaory', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("isMandaory" IN (0, 1))'));
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<int> createdBy = GeneratedColumn<int>(
      'createdBy', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _createdDatetimeMeta =
      const VerificationMeta('createdDatetime');
  @override
  late final GeneratedColumn<String> createdDatetime = GeneratedColumn<String>(
      'createdDatetime', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedByMeta =
      const VerificationMeta('updatedBy');
  @override
  late final GeneratedColumn<String> updatedBy = GeneratedColumn<String>(
      'updatedBy', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedDatetimeMeta =
      const VerificationMeta('updatedDatetime');
  @override
  late final GeneratedColumn<String> updatedDatetime = GeneratedColumn<String>(
      'updatedDatetime', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _traceidMeta =
      const VerificationMeta('traceid');
  @override
  late final GeneratedColumn<String> traceid = GeneratedColumn<String>(
      'traceid', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        docEntry,
        docEntry1,
        templateName,
        checklistCode,
        checklistName,
        listValue,
        acceptAttach,
        acceptMultiValue,
        isMandaory,
        createdBy,
        createdDatetime,
        updatedBy,
        updatedDatetime,
        traceid
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'driftchecklinemaster';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftCheckLineMasterData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('docEntry')) {
      context.handle(_docEntryMeta,
          docEntry.isAcceptableOrUnknown(data['docEntry']!, _docEntryMeta));
    }
    if (data.containsKey('docEntry1')) {
      context.handle(_docEntry1Meta,
          docEntry1.isAcceptableOrUnknown(data['docEntry1']!, _docEntry1Meta));
    }
    if (data.containsKey('templateName')) {
      context.handle(
          _templateNameMeta,
          templateName.isAcceptableOrUnknown(
              data['templateName']!, _templateNameMeta));
    }
    if (data.containsKey('checklistCode')) {
      context.handle(
          _checklistCodeMeta,
          checklistCode.isAcceptableOrUnknown(
              data['checklistCode']!, _checklistCodeMeta));
    }
    if (data.containsKey('checklistName')) {
      context.handle(
          _checklistNameMeta,
          checklistName.isAcceptableOrUnknown(
              data['checklistName']!, _checklistNameMeta));
    }
    if (data.containsKey('listValue')) {
      context.handle(_listValueMeta,
          listValue.isAcceptableOrUnknown(data['listValue']!, _listValueMeta));
    }
    if (data.containsKey('acceptAttach')) {
      context.handle(
          _acceptAttachMeta,
          acceptAttach.isAcceptableOrUnknown(
              data['acceptAttach']!, _acceptAttachMeta));
    }
    if (data.containsKey('acceptMultiValue')) {
      context.handle(
          _acceptMultiValueMeta,
          acceptMultiValue.isAcceptableOrUnknown(
              data['acceptMultiValue']!, _acceptMultiValueMeta));
    }
    if (data.containsKey('isMandaory')) {
      context.handle(
          _isMandaoryMeta,
          isMandaory.isAcceptableOrUnknown(
              data['isMandaory']!, _isMandaoryMeta));
    }
    if (data.containsKey('createdBy')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['createdBy']!, _createdByMeta));
    }
    if (data.containsKey('createdDatetime')) {
      context.handle(
          _createdDatetimeMeta,
          createdDatetime.isAcceptableOrUnknown(
              data['createdDatetime']!, _createdDatetimeMeta));
    }
    if (data.containsKey('updatedBy')) {
      context.handle(_updatedByMeta,
          updatedBy.isAcceptableOrUnknown(data['updatedBy']!, _updatedByMeta));
    }
    if (data.containsKey('updatedDatetime')) {
      context.handle(
          _updatedDatetimeMeta,
          updatedDatetime.isAcceptableOrUnknown(
              data['updatedDatetime']!, _updatedDatetimeMeta));
    }
    if (data.containsKey('traceid')) {
      context.handle(_traceidMeta,
          traceid.isAcceptableOrUnknown(data['traceid']!, _traceidMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  DriftCheckLineMasterData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftCheckLineMasterData(
      docEntry: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}docEntry']),
      docEntry1: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}docEntry1']),
      templateName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}templateName']),
      checklistCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}checklistCode']),
      checklistName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}checklistName']),
      listValue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}listValue']),
      acceptAttach: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}acceptAttach']),
      acceptMultiValue: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}acceptMultiValue']),
      isMandaory: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}isMandaory']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}createdBy']),
      createdDatetime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}createdDatetime']),
      updatedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updatedBy']),
      updatedDatetime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updatedDatetime']),
      traceid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}traceid']),
    );
  }

  @override
  $DriftCheckLineMasterTable createAlias(String alias) {
    return $DriftCheckLineMasterTable(attachedDatabase, alias);
  }
}

class DriftCheckLineMasterData extends DataClass
    implements Insertable<DriftCheckLineMasterData> {
  final int? docEntry;
  final int? docEntry1;
  final String? templateName;
  final String? checklistCode;
  final String? checklistName;
  final String? listValue;
  final bool? acceptAttach;
  final bool? acceptMultiValue;
  final bool? isMandaory;
  final int? createdBy;
  final String? createdDatetime;
  final String? updatedBy;
  final String? updatedDatetime;
  final String? traceid;
  const DriftCheckLineMasterData(
      {this.docEntry,
      this.docEntry1,
      this.templateName,
      this.checklistCode,
      this.checklistName,
      this.listValue,
      this.acceptAttach,
      this.acceptMultiValue,
      this.isMandaory,
      this.createdBy,
      this.createdDatetime,
      this.updatedBy,
      this.updatedDatetime,
      this.traceid});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || docEntry != null) {
      map['docEntry'] = Variable<int>(docEntry);
    }
    if (!nullToAbsent || docEntry1 != null) {
      map['docEntry1'] = Variable<int>(docEntry1);
    }
    if (!nullToAbsent || templateName != null) {
      map['templateName'] = Variable<String>(templateName);
    }
    if (!nullToAbsent || checklistCode != null) {
      map['checklistCode'] = Variable<String>(checklistCode);
    }
    if (!nullToAbsent || checklistName != null) {
      map['checklistName'] = Variable<String>(checklistName);
    }
    if (!nullToAbsent || listValue != null) {
      map['listValue'] = Variable<String>(listValue);
    }
    if (!nullToAbsent || acceptAttach != null) {
      map['acceptAttach'] = Variable<bool>(acceptAttach);
    }
    if (!nullToAbsent || acceptMultiValue != null) {
      map['acceptMultiValue'] = Variable<bool>(acceptMultiValue);
    }
    if (!nullToAbsent || isMandaory != null) {
      map['isMandaory'] = Variable<bool>(isMandaory);
    }
    if (!nullToAbsent || createdBy != null) {
      map['createdBy'] = Variable<int>(createdBy);
    }
    if (!nullToAbsent || createdDatetime != null) {
      map['createdDatetime'] = Variable<String>(createdDatetime);
    }
    if (!nullToAbsent || updatedBy != null) {
      map['updatedBy'] = Variable<String>(updatedBy);
    }
    if (!nullToAbsent || updatedDatetime != null) {
      map['updatedDatetime'] = Variable<String>(updatedDatetime);
    }
    if (!nullToAbsent || traceid != null) {
      map['traceid'] = Variable<String>(traceid);
    }
    return map;
  }

  DriftCheckLineMasterCompanion toCompanion(bool nullToAbsent) {
    return DriftCheckLineMasterCompanion(
      docEntry: docEntry == null && nullToAbsent
          ? const Value.absent()
          : Value(docEntry),
      docEntry1: docEntry1 == null && nullToAbsent
          ? const Value.absent()
          : Value(docEntry1),
      templateName: templateName == null && nullToAbsent
          ? const Value.absent()
          : Value(templateName),
      checklistCode: checklistCode == null && nullToAbsent
          ? const Value.absent()
          : Value(checklistCode),
      checklistName: checklistName == null && nullToAbsent
          ? const Value.absent()
          : Value(checklistName),
      listValue: listValue == null && nullToAbsent
          ? const Value.absent()
          : Value(listValue),
      acceptAttach: acceptAttach == null && nullToAbsent
          ? const Value.absent()
          : Value(acceptAttach),
      acceptMultiValue: acceptMultiValue == null && nullToAbsent
          ? const Value.absent()
          : Value(acceptMultiValue),
      isMandaory: isMandaory == null && nullToAbsent
          ? const Value.absent()
          : Value(isMandaory),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      createdDatetime: createdDatetime == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDatetime),
      updatedBy: updatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedBy),
      updatedDatetime: updatedDatetime == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedDatetime),
      traceid: traceid == null && nullToAbsent
          ? const Value.absent()
          : Value(traceid),
    );
  }

  factory DriftCheckLineMasterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftCheckLineMasterData(
      docEntry: serializer.fromJson<int?>(json['docEntry']),
      docEntry1: serializer.fromJson<int?>(json['docEntry1']),
      templateName: serializer.fromJson<String?>(json['templateName']),
      checklistCode: serializer.fromJson<String?>(json['checklistCode']),
      checklistName: serializer.fromJson<String?>(json['checklistName']),
      listValue: serializer.fromJson<String?>(json['listValue']),
      acceptAttach: serializer.fromJson<bool?>(json['acceptAttach']),
      acceptMultiValue: serializer.fromJson<bool?>(json['acceptMultiValue']),
      isMandaory: serializer.fromJson<bool?>(json['isMandaory']),
      createdBy: serializer.fromJson<int?>(json['createdBy']),
      createdDatetime: serializer.fromJson<String?>(json['createdDatetime']),
      updatedBy: serializer.fromJson<String?>(json['updatedBy']),
      updatedDatetime: serializer.fromJson<String?>(json['updatedDatetime']),
      traceid: serializer.fromJson<String?>(json['traceid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'docEntry': serializer.toJson<int?>(docEntry),
      'docEntry1': serializer.toJson<int?>(docEntry1),
      'templateName': serializer.toJson<String?>(templateName),
      'checklistCode': serializer.toJson<String?>(checklistCode),
      'checklistName': serializer.toJson<String?>(checklistName),
      'listValue': serializer.toJson<String?>(listValue),
      'acceptAttach': serializer.toJson<bool?>(acceptAttach),
      'acceptMultiValue': serializer.toJson<bool?>(acceptMultiValue),
      'isMandaory': serializer.toJson<bool?>(isMandaory),
      'createdBy': serializer.toJson<int?>(createdBy),
      'createdDatetime': serializer.toJson<String?>(createdDatetime),
      'updatedBy': serializer.toJson<String?>(updatedBy),
      'updatedDatetime': serializer.toJson<String?>(updatedDatetime),
      'traceid': serializer.toJson<String?>(traceid),
    };
  }

  DriftCheckLineMasterData copyWith(
          {Value<int?> docEntry = const Value.absent(),
          Value<int?> docEntry1 = const Value.absent(),
          Value<String?> templateName = const Value.absent(),
          Value<String?> checklistCode = const Value.absent(),
          Value<String?> checklistName = const Value.absent(),
          Value<String?> listValue = const Value.absent(),
          Value<bool?> acceptAttach = const Value.absent(),
          Value<bool?> acceptMultiValue = const Value.absent(),
          Value<bool?> isMandaory = const Value.absent(),
          Value<int?> createdBy = const Value.absent(),
          Value<String?> createdDatetime = const Value.absent(),
          Value<String?> updatedBy = const Value.absent(),
          Value<String?> updatedDatetime = const Value.absent(),
          Value<String?> traceid = const Value.absent()}) =>
      DriftCheckLineMasterData(
        docEntry: docEntry.present ? docEntry.value : this.docEntry,
        docEntry1: docEntry1.present ? docEntry1.value : this.docEntry1,
        templateName:
            templateName.present ? templateName.value : this.templateName,
        checklistCode:
            checklistCode.present ? checklistCode.value : this.checklistCode,
        checklistName:
            checklistName.present ? checklistName.value : this.checklistName,
        listValue: listValue.present ? listValue.value : this.listValue,
        acceptAttach:
            acceptAttach.present ? acceptAttach.value : this.acceptAttach,
        acceptMultiValue: acceptMultiValue.present
            ? acceptMultiValue.value
            : this.acceptMultiValue,
        isMandaory: isMandaory.present ? isMandaory.value : this.isMandaory,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        createdDatetime: createdDatetime.present
            ? createdDatetime.value
            : this.createdDatetime,
        updatedBy: updatedBy.present ? updatedBy.value : this.updatedBy,
        updatedDatetime: updatedDatetime.present
            ? updatedDatetime.value
            : this.updatedDatetime,
        traceid: traceid.present ? traceid.value : this.traceid,
      );
  DriftCheckLineMasterData copyWithCompanion(
      DriftCheckLineMasterCompanion data) {
    return DriftCheckLineMasterData(
      docEntry: data.docEntry.present ? data.docEntry.value : this.docEntry,
      docEntry1: data.docEntry1.present ? data.docEntry1.value : this.docEntry1,
      templateName: data.templateName.present
          ? data.templateName.value
          : this.templateName,
      checklistCode: data.checklistCode.present
          ? data.checklistCode.value
          : this.checklistCode,
      checklistName: data.checklistName.present
          ? data.checklistName.value
          : this.checklistName,
      listValue: data.listValue.present ? data.listValue.value : this.listValue,
      acceptAttach: data.acceptAttach.present
          ? data.acceptAttach.value
          : this.acceptAttach,
      acceptMultiValue: data.acceptMultiValue.present
          ? data.acceptMultiValue.value
          : this.acceptMultiValue,
      isMandaory:
          data.isMandaory.present ? data.isMandaory.value : this.isMandaory,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      createdDatetime: data.createdDatetime.present
          ? data.createdDatetime.value
          : this.createdDatetime,
      updatedBy: data.updatedBy.present ? data.updatedBy.value : this.updatedBy,
      updatedDatetime: data.updatedDatetime.present
          ? data.updatedDatetime.value
          : this.updatedDatetime,
      traceid: data.traceid.present ? data.traceid.value : this.traceid,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftCheckLineMasterData(')
          ..write('docEntry: $docEntry, ')
          ..write('docEntry1: $docEntry1, ')
          ..write('templateName: $templateName, ')
          ..write('checklistCode: $checklistCode, ')
          ..write('checklistName: $checklistName, ')
          ..write('listValue: $listValue, ')
          ..write('acceptAttach: $acceptAttach, ')
          ..write('acceptMultiValue: $acceptMultiValue, ')
          ..write('isMandaory: $isMandaory, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDatetime: $createdDatetime, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('updatedDatetime: $updatedDatetime, ')
          ..write('traceid: $traceid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      docEntry,
      docEntry1,
      templateName,
      checklistCode,
      checklistName,
      listValue,
      acceptAttach,
      acceptMultiValue,
      isMandaory,
      createdBy,
      createdDatetime,
      updatedBy,
      updatedDatetime,
      traceid);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftCheckLineMasterData &&
          other.docEntry == this.docEntry &&
          other.docEntry1 == this.docEntry1 &&
          other.templateName == this.templateName &&
          other.checklistCode == this.checklistCode &&
          other.checklistName == this.checklistName &&
          other.listValue == this.listValue &&
          other.acceptAttach == this.acceptAttach &&
          other.acceptMultiValue == this.acceptMultiValue &&
          other.isMandaory == this.isMandaory &&
          other.createdBy == this.createdBy &&
          other.createdDatetime == this.createdDatetime &&
          other.updatedBy == this.updatedBy &&
          other.updatedDatetime == this.updatedDatetime &&
          other.traceid == this.traceid);
}

class DriftCheckLineMasterCompanion
    extends UpdateCompanion<DriftCheckLineMasterData> {
  final Value<int?> docEntry;
  final Value<int?> docEntry1;
  final Value<String?> templateName;
  final Value<String?> checklistCode;
  final Value<String?> checklistName;
  final Value<String?> listValue;
  final Value<bool?> acceptAttach;
  final Value<bool?> acceptMultiValue;
  final Value<bool?> isMandaory;
  final Value<int?> createdBy;
  final Value<String?> createdDatetime;
  final Value<String?> updatedBy;
  final Value<String?> updatedDatetime;
  final Value<String?> traceid;
  final Value<int> rowid;
  const DriftCheckLineMasterCompanion({
    this.docEntry = const Value.absent(),
    this.docEntry1 = const Value.absent(),
    this.templateName = const Value.absent(),
    this.checklistCode = const Value.absent(),
    this.checklistName = const Value.absent(),
    this.listValue = const Value.absent(),
    this.acceptAttach = const Value.absent(),
    this.acceptMultiValue = const Value.absent(),
    this.isMandaory = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDatetime = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.updatedDatetime = const Value.absent(),
    this.traceid = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DriftCheckLineMasterCompanion.insert({
    this.docEntry = const Value.absent(),
    this.docEntry1 = const Value.absent(),
    this.templateName = const Value.absent(),
    this.checklistCode = const Value.absent(),
    this.checklistName = const Value.absent(),
    this.listValue = const Value.absent(),
    this.acceptAttach = const Value.absent(),
    this.acceptMultiValue = const Value.absent(),
    this.isMandaory = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdDatetime = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.updatedDatetime = const Value.absent(),
    this.traceid = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<DriftCheckLineMasterData> custom({
    Expression<int>? docEntry,
    Expression<int>? docEntry1,
    Expression<String>? templateName,
    Expression<String>? checklistCode,
    Expression<String>? checklistName,
    Expression<String>? listValue,
    Expression<bool>? acceptAttach,
    Expression<bool>? acceptMultiValue,
    Expression<bool>? isMandaory,
    Expression<int>? createdBy,
    Expression<String>? createdDatetime,
    Expression<String>? updatedBy,
    Expression<String>? updatedDatetime,
    Expression<String>? traceid,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (docEntry != null) 'docEntry': docEntry,
      if (docEntry1 != null) 'docEntry1': docEntry1,
      if (templateName != null) 'templateName': templateName,
      if (checklistCode != null) 'checklistCode': checklistCode,
      if (checklistName != null) 'checklistName': checklistName,
      if (listValue != null) 'listValue': listValue,
      if (acceptAttach != null) 'acceptAttach': acceptAttach,
      if (acceptMultiValue != null) 'acceptMultiValue': acceptMultiValue,
      if (isMandaory != null) 'isMandaory': isMandaory,
      if (createdBy != null) 'createdBy': createdBy,
      if (createdDatetime != null) 'createdDatetime': createdDatetime,
      if (updatedBy != null) 'updatedBy': updatedBy,
      if (updatedDatetime != null) 'updatedDatetime': updatedDatetime,
      if (traceid != null) 'traceid': traceid,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DriftCheckLineMasterCompanion copyWith(
      {Value<int?>? docEntry,
      Value<int?>? docEntry1,
      Value<String?>? templateName,
      Value<String?>? checklistCode,
      Value<String?>? checklistName,
      Value<String?>? listValue,
      Value<bool?>? acceptAttach,
      Value<bool?>? acceptMultiValue,
      Value<bool?>? isMandaory,
      Value<int?>? createdBy,
      Value<String?>? createdDatetime,
      Value<String?>? updatedBy,
      Value<String?>? updatedDatetime,
      Value<String?>? traceid,
      Value<int>? rowid}) {
    return DriftCheckLineMasterCompanion(
      docEntry: docEntry ?? this.docEntry,
      docEntry1: docEntry1 ?? this.docEntry1,
      templateName: templateName ?? this.templateName,
      checklistCode: checklistCode ?? this.checklistCode,
      checklistName: checklistName ?? this.checklistName,
      listValue: listValue ?? this.listValue,
      acceptAttach: acceptAttach ?? this.acceptAttach,
      acceptMultiValue: acceptMultiValue ?? this.acceptMultiValue,
      isMandaory: isMandaory ?? this.isMandaory,
      createdBy: createdBy ?? this.createdBy,
      createdDatetime: createdDatetime ?? this.createdDatetime,
      updatedBy: updatedBy ?? this.updatedBy,
      updatedDatetime: updatedDatetime ?? this.updatedDatetime,
      traceid: traceid ?? this.traceid,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (docEntry.present) {
      map['docEntry'] = Variable<int>(docEntry.value);
    }
    if (docEntry1.present) {
      map['docEntry1'] = Variable<int>(docEntry1.value);
    }
    if (templateName.present) {
      map['templateName'] = Variable<String>(templateName.value);
    }
    if (checklistCode.present) {
      map['checklistCode'] = Variable<String>(checklistCode.value);
    }
    if (checklistName.present) {
      map['checklistName'] = Variable<String>(checklistName.value);
    }
    if (listValue.present) {
      map['listValue'] = Variable<String>(listValue.value);
    }
    if (acceptAttach.present) {
      map['acceptAttach'] = Variable<bool>(acceptAttach.value);
    }
    if (acceptMultiValue.present) {
      map['acceptMultiValue'] = Variable<bool>(acceptMultiValue.value);
    }
    if (isMandaory.present) {
      map['isMandaory'] = Variable<bool>(isMandaory.value);
    }
    if (createdBy.present) {
      map['createdBy'] = Variable<int>(createdBy.value);
    }
    if (createdDatetime.present) {
      map['createdDatetime'] = Variable<String>(createdDatetime.value);
    }
    if (updatedBy.present) {
      map['updatedBy'] = Variable<String>(updatedBy.value);
    }
    if (updatedDatetime.present) {
      map['updatedDatetime'] = Variable<String>(updatedDatetime.value);
    }
    if (traceid.present) {
      map['traceid'] = Variable<String>(traceid.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftCheckLineMasterCompanion(')
          ..write('docEntry: $docEntry, ')
          ..write('docEntry1: $docEntry1, ')
          ..write('templateName: $templateName, ')
          ..write('checklistCode: $checklistCode, ')
          ..write('checklistName: $checklistName, ')
          ..write('listValue: $listValue, ')
          ..write('acceptAttach: $acceptAttach, ')
          ..write('acceptMultiValue: $acceptMultiValue, ')
          ..write('isMandaory: $isMandaory, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdDatetime: $createdDatetime, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('updatedDatetime: $updatedDatetime, ')
          ..write('traceid: $traceid, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DriftScanPostMasterTable extends DriftScanPostMaster
    with TableInfo<$DriftScanPostMasterTable, DriftScanPostMasterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftScanPostMasterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _IMidMeta = const VerificationMeta('IMid');
  @override
  late final GeneratedColumn<int> IMid = GeneratedColumn<int>(
      'i_mid', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _auditidMeta =
      const VerificationMeta('auditid');
  @override
  late final GeneratedColumn<int> auditid = GeneratedColumn<int>(
      'auditid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _whscodeMeta =
      const VerificationMeta('whscode');
  @override
  late final GeneratedColumn<String> whscode = GeneratedColumn<String>(
      'whscode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _bincodeMeta =
      const VerificationMeta('bincode');
  @override
  late final GeneratedColumn<String> bincode = GeneratedColumn<String>(
      'bincode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemcodeMeta =
      const VerificationMeta('itemcode');
  @override
  late final GeneratedColumn<String> itemcode = GeneratedColumn<String>(
      'itemcode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _serialbatchMeta =
      const VerificationMeta('serialbatch');
  @override
  late final GeneratedColumn<String> serialbatch = GeneratedColumn<String>(
      'serialbatch', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'quantity', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _stockstatusMeta =
      const VerificationMeta('stockstatus');
  @override
  late final GeneratedColumn<String> stockstatus = GeneratedColumn<String>(
      'stockstatus', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _devicecodeMeta =
      const VerificationMeta('devicecode');
  @override
  late final GeneratedColumn<String> devicecode = GeneratedColumn<String>(
      'devicecode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _scandatetimeMeta =
      const VerificationMeta('scandatetime');
  @override
  late final GeneratedColumn<String> scandatetime = GeneratedColumn<String>(
      'scandatetime', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _ismanualMeta =
      const VerificationMeta('ismanual');
  @override
  late final GeneratedColumn<int> ismanual = GeneratedColumn<int>(
      'ismanual', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _templateidMeta =
      const VerificationMeta('templateid');
  @override
  late final GeneratedColumn<int> templateid = GeneratedColumn<int>(
      'templateid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _scanguidMeta =
      const VerificationMeta('scanguid');
  @override
  late final GeneratedColumn<String> scanguid = GeneratedColumn<String>(
      'scanguid', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        IMid,
        auditid,
        whscode,
        bincode,
        itemcode,
        serialbatch,
        quantity,
        stockstatus,
        notes,
        devicecode,
        scandatetime,
        ismanual,
        templateid,
        scanguid
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'driftscanpostdatatable';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftScanPostMasterData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('i_mid')) {
      context.handle(
          _IMidMeta, IMid.isAcceptableOrUnknown(data['i_mid']!, _IMidMeta));
    }
    if (data.containsKey('auditid')) {
      context.handle(_auditidMeta,
          auditid.isAcceptableOrUnknown(data['auditid']!, _auditidMeta));
    }
    if (data.containsKey('whscode')) {
      context.handle(_whscodeMeta,
          whscode.isAcceptableOrUnknown(data['whscode']!, _whscodeMeta));
    }
    if (data.containsKey('bincode')) {
      context.handle(_bincodeMeta,
          bincode.isAcceptableOrUnknown(data['bincode']!, _bincodeMeta));
    }
    if (data.containsKey('itemcode')) {
      context.handle(_itemcodeMeta,
          itemcode.isAcceptableOrUnknown(data['itemcode']!, _itemcodeMeta));
    }
    if (data.containsKey('serialbatch')) {
      context.handle(
          _serialbatchMeta,
          serialbatch.isAcceptableOrUnknown(
              data['serialbatch']!, _serialbatchMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    }
    if (data.containsKey('stockstatus')) {
      context.handle(
          _stockstatusMeta,
          stockstatus.isAcceptableOrUnknown(
              data['stockstatus']!, _stockstatusMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('devicecode')) {
      context.handle(
          _devicecodeMeta,
          devicecode.isAcceptableOrUnknown(
              data['devicecode']!, _devicecodeMeta));
    }
    if (data.containsKey('scandatetime')) {
      context.handle(
          _scandatetimeMeta,
          scandatetime.isAcceptableOrUnknown(
              data['scandatetime']!, _scandatetimeMeta));
    }
    if (data.containsKey('ismanual')) {
      context.handle(_ismanualMeta,
          ismanual.isAcceptableOrUnknown(data['ismanual']!, _ismanualMeta));
    }
    if (data.containsKey('templateid')) {
      context.handle(
          _templateidMeta,
          templateid.isAcceptableOrUnknown(
              data['templateid']!, _templateidMeta));
    }
    if (data.containsKey('scanguid')) {
      context.handle(_scanguidMeta,
          scanguid.isAcceptableOrUnknown(data['scanguid']!, _scanguidMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {IMid};
  @override
  DriftScanPostMasterData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftScanPostMasterData(
      IMid: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}i_mid'])!,
      auditid: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}auditid']),
      whscode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}whscode']),
      bincode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bincode']),
      itemcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}itemcode']),
      serialbatch: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}serialbatch']),
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}quantity']),
      stockstatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stockstatus']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      devicecode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}devicecode']),
      scandatetime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scandatetime']),
      ismanual: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ismanual']),
      templateid: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}templateid']),
      scanguid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scanguid']),
    );
  }

  @override
  $DriftScanPostMasterTable createAlias(String alias) {
    return $DriftScanPostMasterTable(attachedDatabase, alias);
  }
}

class DriftScanPostMasterData extends DataClass
    implements Insertable<DriftScanPostMasterData> {
  final int IMid;
  final int? auditid;
  final String? whscode;
  final String? bincode;
  final String? itemcode;
  final String? serialbatch;
  final double? quantity;
  final String? stockstatus;
  final String? notes;
  final String? devicecode;
  final String? scandatetime;
  final int? ismanual;
  final int? templateid;
  final String? scanguid;
  const DriftScanPostMasterData(
      {required this.IMid,
      this.auditid,
      this.whscode,
      this.bincode,
      this.itemcode,
      this.serialbatch,
      this.quantity,
      this.stockstatus,
      this.notes,
      this.devicecode,
      this.scandatetime,
      this.ismanual,
      this.templateid,
      this.scanguid});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['i_mid'] = Variable<int>(IMid);
    if (!nullToAbsent || auditid != null) {
      map['auditid'] = Variable<int>(auditid);
    }
    if (!nullToAbsent || whscode != null) {
      map['whscode'] = Variable<String>(whscode);
    }
    if (!nullToAbsent || bincode != null) {
      map['bincode'] = Variable<String>(bincode);
    }
    if (!nullToAbsent || itemcode != null) {
      map['itemcode'] = Variable<String>(itemcode);
    }
    if (!nullToAbsent || serialbatch != null) {
      map['serialbatch'] = Variable<String>(serialbatch);
    }
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<double>(quantity);
    }
    if (!nullToAbsent || stockstatus != null) {
      map['stockstatus'] = Variable<String>(stockstatus);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || devicecode != null) {
      map['devicecode'] = Variable<String>(devicecode);
    }
    if (!nullToAbsent || scandatetime != null) {
      map['scandatetime'] = Variable<String>(scandatetime);
    }
    if (!nullToAbsent || ismanual != null) {
      map['ismanual'] = Variable<int>(ismanual);
    }
    if (!nullToAbsent || templateid != null) {
      map['templateid'] = Variable<int>(templateid);
    }
    if (!nullToAbsent || scanguid != null) {
      map['scanguid'] = Variable<String>(scanguid);
    }
    return map;
  }

  DriftScanPostMasterCompanion toCompanion(bool nullToAbsent) {
    return DriftScanPostMasterCompanion(
      IMid: Value(IMid),
      auditid: auditid == null && nullToAbsent
          ? const Value.absent()
          : Value(auditid),
      whscode: whscode == null && nullToAbsent
          ? const Value.absent()
          : Value(whscode),
      bincode: bincode == null && nullToAbsent
          ? const Value.absent()
          : Value(bincode),
      itemcode: itemcode == null && nullToAbsent
          ? const Value.absent()
          : Value(itemcode),
      serialbatch: serialbatch == null && nullToAbsent
          ? const Value.absent()
          : Value(serialbatch),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      stockstatus: stockstatus == null && nullToAbsent
          ? const Value.absent()
          : Value(stockstatus),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      devicecode: devicecode == null && nullToAbsent
          ? const Value.absent()
          : Value(devicecode),
      scandatetime: scandatetime == null && nullToAbsent
          ? const Value.absent()
          : Value(scandatetime),
      ismanual: ismanual == null && nullToAbsent
          ? const Value.absent()
          : Value(ismanual),
      templateid: templateid == null && nullToAbsent
          ? const Value.absent()
          : Value(templateid),
      scanguid: scanguid == null && nullToAbsent
          ? const Value.absent()
          : Value(scanguid),
    );
  }

  factory DriftScanPostMasterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftScanPostMasterData(
      IMid: serializer.fromJson<int>(json['IMid']),
      auditid: serializer.fromJson<int?>(json['auditid']),
      whscode: serializer.fromJson<String?>(json['whscode']),
      bincode: serializer.fromJson<String?>(json['bincode']),
      itemcode: serializer.fromJson<String?>(json['itemcode']),
      serialbatch: serializer.fromJson<String?>(json['serialbatch']),
      quantity: serializer.fromJson<double?>(json['quantity']),
      stockstatus: serializer.fromJson<String?>(json['stockstatus']),
      notes: serializer.fromJson<String?>(json['notes']),
      devicecode: serializer.fromJson<String?>(json['devicecode']),
      scandatetime: serializer.fromJson<String?>(json['scandatetime']),
      ismanual: serializer.fromJson<int?>(json['ismanual']),
      templateid: serializer.fromJson<int?>(json['templateid']),
      scanguid: serializer.fromJson<String?>(json['scanguid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'IMid': serializer.toJson<int>(IMid),
      'auditid': serializer.toJson<int?>(auditid),
      'whscode': serializer.toJson<String?>(whscode),
      'bincode': serializer.toJson<String?>(bincode),
      'itemcode': serializer.toJson<String?>(itemcode),
      'serialbatch': serializer.toJson<String?>(serialbatch),
      'quantity': serializer.toJson<double?>(quantity),
      'stockstatus': serializer.toJson<String?>(stockstatus),
      'notes': serializer.toJson<String?>(notes),
      'devicecode': serializer.toJson<String?>(devicecode),
      'scandatetime': serializer.toJson<String?>(scandatetime),
      'ismanual': serializer.toJson<int?>(ismanual),
      'templateid': serializer.toJson<int?>(templateid),
      'scanguid': serializer.toJson<String?>(scanguid),
    };
  }

  DriftScanPostMasterData copyWith(
          {int? IMid,
          Value<int?> auditid = const Value.absent(),
          Value<String?> whscode = const Value.absent(),
          Value<String?> bincode = const Value.absent(),
          Value<String?> itemcode = const Value.absent(),
          Value<String?> serialbatch = const Value.absent(),
          Value<double?> quantity = const Value.absent(),
          Value<String?> stockstatus = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<String?> devicecode = const Value.absent(),
          Value<String?> scandatetime = const Value.absent(),
          Value<int?> ismanual = const Value.absent(),
          Value<int?> templateid = const Value.absent(),
          Value<String?> scanguid = const Value.absent()}) =>
      DriftScanPostMasterData(
        IMid: IMid ?? this.IMid,
        auditid: auditid.present ? auditid.value : this.auditid,
        whscode: whscode.present ? whscode.value : this.whscode,
        bincode: bincode.present ? bincode.value : this.bincode,
        itemcode: itemcode.present ? itemcode.value : this.itemcode,
        serialbatch: serialbatch.present ? serialbatch.value : this.serialbatch,
        quantity: quantity.present ? quantity.value : this.quantity,
        stockstatus: stockstatus.present ? stockstatus.value : this.stockstatus,
        notes: notes.present ? notes.value : this.notes,
        devicecode: devicecode.present ? devicecode.value : this.devicecode,
        scandatetime:
            scandatetime.present ? scandatetime.value : this.scandatetime,
        ismanual: ismanual.present ? ismanual.value : this.ismanual,
        templateid: templateid.present ? templateid.value : this.templateid,
        scanguid: scanguid.present ? scanguid.value : this.scanguid,
      );
  DriftScanPostMasterData copyWithCompanion(DriftScanPostMasterCompanion data) {
    return DriftScanPostMasterData(
      IMid: data.IMid.present ? data.IMid.value : this.IMid,
      auditid: data.auditid.present ? data.auditid.value : this.auditid,
      whscode: data.whscode.present ? data.whscode.value : this.whscode,
      bincode: data.bincode.present ? data.bincode.value : this.bincode,
      itemcode: data.itemcode.present ? data.itemcode.value : this.itemcode,
      serialbatch:
          data.serialbatch.present ? data.serialbatch.value : this.serialbatch,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      stockstatus:
          data.stockstatus.present ? data.stockstatus.value : this.stockstatus,
      notes: data.notes.present ? data.notes.value : this.notes,
      devicecode:
          data.devicecode.present ? data.devicecode.value : this.devicecode,
      scandatetime: data.scandatetime.present
          ? data.scandatetime.value
          : this.scandatetime,
      ismanual: data.ismanual.present ? data.ismanual.value : this.ismanual,
      templateid:
          data.templateid.present ? data.templateid.value : this.templateid,
      scanguid: data.scanguid.present ? data.scanguid.value : this.scanguid,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftScanPostMasterData(')
          ..write('IMid: $IMid, ')
          ..write('auditid: $auditid, ')
          ..write('whscode: $whscode, ')
          ..write('bincode: $bincode, ')
          ..write('itemcode: $itemcode, ')
          ..write('serialbatch: $serialbatch, ')
          ..write('quantity: $quantity, ')
          ..write('stockstatus: $stockstatus, ')
          ..write('notes: $notes, ')
          ..write('devicecode: $devicecode, ')
          ..write('scandatetime: $scandatetime, ')
          ..write('ismanual: $ismanual, ')
          ..write('templateid: $templateid, ')
          ..write('scanguid: $scanguid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      IMid,
      auditid,
      whscode,
      bincode,
      itemcode,
      serialbatch,
      quantity,
      stockstatus,
      notes,
      devicecode,
      scandatetime,
      ismanual,
      templateid,
      scanguid);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftScanPostMasterData &&
          other.IMid == this.IMid &&
          other.auditid == this.auditid &&
          other.whscode == this.whscode &&
          other.bincode == this.bincode &&
          other.itemcode == this.itemcode &&
          other.serialbatch == this.serialbatch &&
          other.quantity == this.quantity &&
          other.stockstatus == this.stockstatus &&
          other.notes == this.notes &&
          other.devicecode == this.devicecode &&
          other.scandatetime == this.scandatetime &&
          other.ismanual == this.ismanual &&
          other.templateid == this.templateid &&
          other.scanguid == this.scanguid);
}

class DriftScanPostMasterCompanion
    extends UpdateCompanion<DriftScanPostMasterData> {
  final Value<int> IMid;
  final Value<int?> auditid;
  final Value<String?> whscode;
  final Value<String?> bincode;
  final Value<String?> itemcode;
  final Value<String?> serialbatch;
  final Value<double?> quantity;
  final Value<String?> stockstatus;
  final Value<String?> notes;
  final Value<String?> devicecode;
  final Value<String?> scandatetime;
  final Value<int?> ismanual;
  final Value<int?> templateid;
  final Value<String?> scanguid;
  const DriftScanPostMasterCompanion({
    this.IMid = const Value.absent(),
    this.auditid = const Value.absent(),
    this.whscode = const Value.absent(),
    this.bincode = const Value.absent(),
    this.itemcode = const Value.absent(),
    this.serialbatch = const Value.absent(),
    this.quantity = const Value.absent(),
    this.stockstatus = const Value.absent(),
    this.notes = const Value.absent(),
    this.devicecode = const Value.absent(),
    this.scandatetime = const Value.absent(),
    this.ismanual = const Value.absent(),
    this.templateid = const Value.absent(),
    this.scanguid = const Value.absent(),
  });
  DriftScanPostMasterCompanion.insert({
    this.IMid = const Value.absent(),
    this.auditid = const Value.absent(),
    this.whscode = const Value.absent(),
    this.bincode = const Value.absent(),
    this.itemcode = const Value.absent(),
    this.serialbatch = const Value.absent(),
    this.quantity = const Value.absent(),
    this.stockstatus = const Value.absent(),
    this.notes = const Value.absent(),
    this.devicecode = const Value.absent(),
    this.scandatetime = const Value.absent(),
    this.ismanual = const Value.absent(),
    this.templateid = const Value.absent(),
    this.scanguid = const Value.absent(),
  });
  static Insertable<DriftScanPostMasterData> custom({
    Expression<int>? IMid,
    Expression<int>? auditid,
    Expression<String>? whscode,
    Expression<String>? bincode,
    Expression<String>? itemcode,
    Expression<String>? serialbatch,
    Expression<double>? quantity,
    Expression<String>? stockstatus,
    Expression<String>? notes,
    Expression<String>? devicecode,
    Expression<String>? scandatetime,
    Expression<int>? ismanual,
    Expression<int>? templateid,
    Expression<String>? scanguid,
  }) {
    return RawValuesInsertable({
      if (IMid != null) 'i_mid': IMid,
      if (auditid != null) 'auditid': auditid,
      if (whscode != null) 'whscode': whscode,
      if (bincode != null) 'bincode': bincode,
      if (itemcode != null) 'itemcode': itemcode,
      if (serialbatch != null) 'serialbatch': serialbatch,
      if (quantity != null) 'quantity': quantity,
      if (stockstatus != null) 'stockstatus': stockstatus,
      if (notes != null) 'notes': notes,
      if (devicecode != null) 'devicecode': devicecode,
      if (scandatetime != null) 'scandatetime': scandatetime,
      if (ismanual != null) 'ismanual': ismanual,
      if (templateid != null) 'templateid': templateid,
      if (scanguid != null) 'scanguid': scanguid,
    });
  }

  DriftScanPostMasterCompanion copyWith(
      {Value<int>? IMid,
      Value<int?>? auditid,
      Value<String?>? whscode,
      Value<String?>? bincode,
      Value<String?>? itemcode,
      Value<String?>? serialbatch,
      Value<double?>? quantity,
      Value<String?>? stockstatus,
      Value<String?>? notes,
      Value<String?>? devicecode,
      Value<String?>? scandatetime,
      Value<int?>? ismanual,
      Value<int?>? templateid,
      Value<String?>? scanguid}) {
    return DriftScanPostMasterCompanion(
      IMid: IMid ?? this.IMid,
      auditid: auditid ?? this.auditid,
      whscode: whscode ?? this.whscode,
      bincode: bincode ?? this.bincode,
      itemcode: itemcode ?? this.itemcode,
      serialbatch: serialbatch ?? this.serialbatch,
      quantity: quantity ?? this.quantity,
      stockstatus: stockstatus ?? this.stockstatus,
      notes: notes ?? this.notes,
      devicecode: devicecode ?? this.devicecode,
      scandatetime: scandatetime ?? this.scandatetime,
      ismanual: ismanual ?? this.ismanual,
      templateid: templateid ?? this.templateid,
      scanguid: scanguid ?? this.scanguid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (IMid.present) {
      map['i_mid'] = Variable<int>(IMid.value);
    }
    if (auditid.present) {
      map['auditid'] = Variable<int>(auditid.value);
    }
    if (whscode.present) {
      map['whscode'] = Variable<String>(whscode.value);
    }
    if (bincode.present) {
      map['bincode'] = Variable<String>(bincode.value);
    }
    if (itemcode.present) {
      map['itemcode'] = Variable<String>(itemcode.value);
    }
    if (serialbatch.present) {
      map['serialbatch'] = Variable<String>(serialbatch.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (stockstatus.present) {
      map['stockstatus'] = Variable<String>(stockstatus.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (devicecode.present) {
      map['devicecode'] = Variable<String>(devicecode.value);
    }
    if (scandatetime.present) {
      map['scandatetime'] = Variable<String>(scandatetime.value);
    }
    if (ismanual.present) {
      map['ismanual'] = Variable<int>(ismanual.value);
    }
    if (templateid.present) {
      map['templateid'] = Variable<int>(templateid.value);
    }
    if (scanguid.present) {
      map['scanguid'] = Variable<String>(scanguid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftScanPostMasterCompanion(')
          ..write('IMid: $IMid, ')
          ..write('auditid: $auditid, ')
          ..write('whscode: $whscode, ')
          ..write('bincode: $bincode, ')
          ..write('itemcode: $itemcode, ')
          ..write('serialbatch: $serialbatch, ')
          ..write('quantity: $quantity, ')
          ..write('stockstatus: $stockstatus, ')
          ..write('notes: $notes, ')
          ..write('devicecode: $devicecode, ')
          ..write('scandatetime: $scandatetime, ')
          ..write('ismanual: $ismanual, ')
          ..write('templateid: $templateid, ')
          ..write('scanguid: $scanguid')
          ..write(')'))
        .toString();
  }
}

class $DriftDispMasterTable extends DriftDispMaster
    with TableInfo<$DriftDispMasterTable, DriftDispMasterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftDispMasterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _IMidMeta = const VerificationMeta('IMid');
  @override
  late final GeneratedColumn<int> IMid = GeneratedColumn<int>(
      'i_mid', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _auditidMeta =
      const VerificationMeta('auditid');
  @override
  late final GeneratedColumn<int> auditid = GeneratedColumn<int>(
      'auditid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _checklistcodeMeta =
      const VerificationMeta('checklistcode');
  @override
  late final GeneratedColumn<String> checklistcode = GeneratedColumn<String>(
      'checklistcode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _checklistvalueMeta =
      const VerificationMeta('checklistvalue');
  @override
  late final GeneratedColumn<String> checklistvalue = GeneratedColumn<String>(
      'checklistvalue', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _attachurlMeta =
      const VerificationMeta('attachurl');
  @override
  late final GeneratedColumn<String> attachurl = GeneratedColumn<String>(
      'attachurl', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [IMid, auditid, checklistcode, checklistvalue, attachurl];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'driftdisptable';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftDispMasterData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('i_mid')) {
      context.handle(
          _IMidMeta, IMid.isAcceptableOrUnknown(data['i_mid']!, _IMidMeta));
    }
    if (data.containsKey('auditid')) {
      context.handle(_auditidMeta,
          auditid.isAcceptableOrUnknown(data['auditid']!, _auditidMeta));
    }
    if (data.containsKey('checklistcode')) {
      context.handle(
          _checklistcodeMeta,
          checklistcode.isAcceptableOrUnknown(
              data['checklistcode']!, _checklistcodeMeta));
    }
    if (data.containsKey('checklistvalue')) {
      context.handle(
          _checklistvalueMeta,
          checklistvalue.isAcceptableOrUnknown(
              data['checklistvalue']!, _checklistvalueMeta));
    }
    if (data.containsKey('attachurl')) {
      context.handle(_attachurlMeta,
          attachurl.isAcceptableOrUnknown(data['attachurl']!, _attachurlMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {IMid};
  @override
  DriftDispMasterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftDispMasterData(
      IMid: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}i_mid'])!,
      auditid: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}auditid']),
      checklistcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}checklistcode']),
      checklistvalue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}checklistvalue']),
      attachurl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attachurl']),
    );
  }

  @override
  $DriftDispMasterTable createAlias(String alias) {
    return $DriftDispMasterTable(attachedDatabase, alias);
  }
}

class DriftDispMasterData extends DataClass
    implements Insertable<DriftDispMasterData> {
  final int IMid;
  final int? auditid;
  final String? checklistcode;
  final String? checklistvalue;
  final String? attachurl;
  const DriftDispMasterData(
      {required this.IMid,
      this.auditid,
      this.checklistcode,
      this.checklistvalue,
      this.attachurl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['i_mid'] = Variable<int>(IMid);
    if (!nullToAbsent || auditid != null) {
      map['auditid'] = Variable<int>(auditid);
    }
    if (!nullToAbsent || checklistcode != null) {
      map['checklistcode'] = Variable<String>(checklistcode);
    }
    if (!nullToAbsent || checklistvalue != null) {
      map['checklistvalue'] = Variable<String>(checklistvalue);
    }
    if (!nullToAbsent || attachurl != null) {
      map['attachurl'] = Variable<String>(attachurl);
    }
    return map;
  }

  DriftDispMasterCompanion toCompanion(bool nullToAbsent) {
    return DriftDispMasterCompanion(
      IMid: Value(IMid),
      auditid: auditid == null && nullToAbsent
          ? const Value.absent()
          : Value(auditid),
      checklistcode: checklistcode == null && nullToAbsent
          ? const Value.absent()
          : Value(checklistcode),
      checklistvalue: checklistvalue == null && nullToAbsent
          ? const Value.absent()
          : Value(checklistvalue),
      attachurl: attachurl == null && nullToAbsent
          ? const Value.absent()
          : Value(attachurl),
    );
  }

  factory DriftDispMasterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftDispMasterData(
      IMid: serializer.fromJson<int>(json['IMid']),
      auditid: serializer.fromJson<int?>(json['auditid']),
      checklistcode: serializer.fromJson<String?>(json['checklistcode']),
      checklistvalue: serializer.fromJson<String?>(json['checklistvalue']),
      attachurl: serializer.fromJson<String?>(json['attachurl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'IMid': serializer.toJson<int>(IMid),
      'auditid': serializer.toJson<int?>(auditid),
      'checklistcode': serializer.toJson<String?>(checklistcode),
      'checklistvalue': serializer.toJson<String?>(checklistvalue),
      'attachurl': serializer.toJson<String?>(attachurl),
    };
  }

  DriftDispMasterData copyWith(
          {int? IMid,
          Value<int?> auditid = const Value.absent(),
          Value<String?> checklistcode = const Value.absent(),
          Value<String?> checklistvalue = const Value.absent(),
          Value<String?> attachurl = const Value.absent()}) =>
      DriftDispMasterData(
        IMid: IMid ?? this.IMid,
        auditid: auditid.present ? auditid.value : this.auditid,
        checklistcode:
            checklistcode.present ? checklistcode.value : this.checklistcode,
        checklistvalue:
            checklistvalue.present ? checklistvalue.value : this.checklistvalue,
        attachurl: attachurl.present ? attachurl.value : this.attachurl,
      );
  DriftDispMasterData copyWithCompanion(DriftDispMasterCompanion data) {
    return DriftDispMasterData(
      IMid: data.IMid.present ? data.IMid.value : this.IMid,
      auditid: data.auditid.present ? data.auditid.value : this.auditid,
      checklistcode: data.checklistcode.present
          ? data.checklistcode.value
          : this.checklistcode,
      checklistvalue: data.checklistvalue.present
          ? data.checklistvalue.value
          : this.checklistvalue,
      attachurl: data.attachurl.present ? data.attachurl.value : this.attachurl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftDispMasterData(')
          ..write('IMid: $IMid, ')
          ..write('auditid: $auditid, ')
          ..write('checklistcode: $checklistcode, ')
          ..write('checklistvalue: $checklistvalue, ')
          ..write('attachurl: $attachurl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(IMid, auditid, checklistcode, checklistvalue, attachurl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftDispMasterData &&
          other.IMid == this.IMid &&
          other.auditid == this.auditid &&
          other.checklistcode == this.checklistcode &&
          other.checklistvalue == this.checklistvalue &&
          other.attachurl == this.attachurl);
}

class DriftDispMasterCompanion extends UpdateCompanion<DriftDispMasterData> {
  final Value<int> IMid;
  final Value<int?> auditid;
  final Value<String?> checklistcode;
  final Value<String?> checklistvalue;
  final Value<String?> attachurl;
  const DriftDispMasterCompanion({
    this.IMid = const Value.absent(),
    this.auditid = const Value.absent(),
    this.checklistcode = const Value.absent(),
    this.checklistvalue = const Value.absent(),
    this.attachurl = const Value.absent(),
  });
  DriftDispMasterCompanion.insert({
    this.IMid = const Value.absent(),
    this.auditid = const Value.absent(),
    this.checklistcode = const Value.absent(),
    this.checklistvalue = const Value.absent(),
    this.attachurl = const Value.absent(),
  });
  static Insertable<DriftDispMasterData> custom({
    Expression<int>? IMid,
    Expression<int>? auditid,
    Expression<String>? checklistcode,
    Expression<String>? checklistvalue,
    Expression<String>? attachurl,
  }) {
    return RawValuesInsertable({
      if (IMid != null) 'i_mid': IMid,
      if (auditid != null) 'auditid': auditid,
      if (checklistcode != null) 'checklistcode': checklistcode,
      if (checklistvalue != null) 'checklistvalue': checklistvalue,
      if (attachurl != null) 'attachurl': attachurl,
    });
  }

  DriftDispMasterCompanion copyWith(
      {Value<int>? IMid,
      Value<int?>? auditid,
      Value<String?>? checklistcode,
      Value<String?>? checklistvalue,
      Value<String?>? attachurl}) {
    return DriftDispMasterCompanion(
      IMid: IMid ?? this.IMid,
      auditid: auditid ?? this.auditid,
      checklistcode: checklistcode ?? this.checklistcode,
      checklistvalue: checklistvalue ?? this.checklistvalue,
      attachurl: attachurl ?? this.attachurl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (IMid.present) {
      map['i_mid'] = Variable<int>(IMid.value);
    }
    if (auditid.present) {
      map['auditid'] = Variable<int>(auditid.value);
    }
    if (checklistcode.present) {
      map['checklistcode'] = Variable<String>(checklistcode.value);
    }
    if (checklistvalue.present) {
      map['checklistvalue'] = Variable<String>(checklistvalue.value);
    }
    if (attachurl.present) {
      map['attachurl'] = Variable<String>(attachurl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftDispMasterCompanion(')
          ..write('IMid: $IMid, ')
          ..write('auditid: $auditid, ')
          ..write('checklistcode: $checklistcode, ')
          ..write('checklistvalue: $checklistvalue, ')
          ..write('attachurl: $attachurl')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $DriftItemMasterTable driftItemMaster =
      $DriftItemMasterTable(this);
  late final $DriftLineMasterTable driftLineMaster =
      $DriftLineMasterTable(this);
  late final $DriftBinMasterTable driftBinMaster = $DriftBinMasterTable(this);
  late final $CheckListHeaderMasterTable checkListHeaderMaster =
      $CheckListHeaderMasterTable(this);
  late final $DriftCheckLineMasterTable driftCheckLineMaster =
      $DriftCheckLineMasterTable(this);
  late final $DriftScanPostMasterTable driftScanPostMaster =
      $DriftScanPostMasterTable(this);
  late final $DriftDispMasterTable driftDispMaster =
      $DriftDispMasterTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        driftItemMaster,
        driftLineMaster,
        driftBinMaster,
        checkListHeaderMaster,
        driftCheckLineMaster,
        driftScanPostMaster,
        driftDispMaster
      ];
}

typedef $$DriftItemMasterTableCreateCompanionBuilder = DriftItemMasterCompanion
    Function({
  Value<int> IMid,
  Value<int?> auditScheduleID,
  Value<int?> id,
  Value<int?> itemDisposition,
  Value<int?> dispId,
  Value<String?> itemCode,
  Value<String?> itemType,
  Value<String?> itemName,
  Value<String?> category,
  Value<String?> subCategory,
  Value<String?> brand,
  Value<String?> itemDescription,
  Value<String?> modelNo,
  Value<String?> partCode,
  Value<String?> skucode,
  Value<String?> brandCode,
  Value<String?> itemGroup,
  Value<String?> specification,
  Value<String?> sizeCapacity,
  Value<String?> clasification,
  Value<String?> updatedDateTime,
  Value<String?> uoM,
  Value<double?> taxRate,
  Value<String?> imageUrl1,
  Value<String?> textNote,
  Value<String?> status,
  Value<int?> movingType,
  Value<String?> traceId,
  Value<String?> updatedBy,
  Value<int?> createdBy,
  Value<double?> lengthh,
  Value<double?> width,
  Value<double?> height,
  Value<double?> weight,
  Value<double?> volume,
  Value<String?> inwardUoM,
  Value<double?> inwardPackQty,
  Value<String?> outwardUoM,
  Value<double?> outwardPackQty,
  Value<bool?> isPerishable,
  Value<bool?> hasExpiryDate,
  Value<int?> expiryDays,
  Value<int?> isFragile,
  Value<String?> manageBy,
  Value<String?> createdDateTime,
  Value<String?> color,
});
typedef $$DriftItemMasterTableUpdateCompanionBuilder = DriftItemMasterCompanion
    Function({
  Value<int> IMid,
  Value<int?> auditScheduleID,
  Value<int?> id,
  Value<int?> itemDisposition,
  Value<int?> dispId,
  Value<String?> itemCode,
  Value<String?> itemType,
  Value<String?> itemName,
  Value<String?> category,
  Value<String?> subCategory,
  Value<String?> brand,
  Value<String?> itemDescription,
  Value<String?> modelNo,
  Value<String?> partCode,
  Value<String?> skucode,
  Value<String?> brandCode,
  Value<String?> itemGroup,
  Value<String?> specification,
  Value<String?> sizeCapacity,
  Value<String?> clasification,
  Value<String?> updatedDateTime,
  Value<String?> uoM,
  Value<double?> taxRate,
  Value<String?> imageUrl1,
  Value<String?> textNote,
  Value<String?> status,
  Value<int?> movingType,
  Value<String?> traceId,
  Value<String?> updatedBy,
  Value<int?> createdBy,
  Value<double?> lengthh,
  Value<double?> width,
  Value<double?> height,
  Value<double?> weight,
  Value<double?> volume,
  Value<String?> inwardUoM,
  Value<double?> inwardPackQty,
  Value<String?> outwardUoM,
  Value<double?> outwardPackQty,
  Value<bool?> isPerishable,
  Value<bool?> hasExpiryDate,
  Value<int?> expiryDays,
  Value<int?> isFragile,
  Value<String?> manageBy,
  Value<String?> createdDateTime,
  Value<String?> color,
});

class $$DriftItemMasterTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DriftItemMasterTable,
    DriftItemMasterData,
    $$DriftItemMasterTableFilterComposer,
    $$DriftItemMasterTableOrderingComposer,
    $$DriftItemMasterTableCreateCompanionBuilder,
    $$DriftItemMasterTableUpdateCompanionBuilder> {
  $$DriftItemMasterTableTableManager(
      _$AppDatabase db, $DriftItemMasterTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DriftItemMasterTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DriftItemMasterTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> IMid = const Value.absent(),
            Value<int?> auditScheduleID = const Value.absent(),
            Value<int?> id = const Value.absent(),
            Value<int?> itemDisposition = const Value.absent(),
            Value<int?> dispId = const Value.absent(),
            Value<String?> itemCode = const Value.absent(),
            Value<String?> itemType = const Value.absent(),
            Value<String?> itemName = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<String?> subCategory = const Value.absent(),
            Value<String?> brand = const Value.absent(),
            Value<String?> itemDescription = const Value.absent(),
            Value<String?> modelNo = const Value.absent(),
            Value<String?> partCode = const Value.absent(),
            Value<String?> skucode = const Value.absent(),
            Value<String?> brandCode = const Value.absent(),
            Value<String?> itemGroup = const Value.absent(),
            Value<String?> specification = const Value.absent(),
            Value<String?> sizeCapacity = const Value.absent(),
            Value<String?> clasification = const Value.absent(),
            Value<String?> updatedDateTime = const Value.absent(),
            Value<String?> uoM = const Value.absent(),
            Value<double?> taxRate = const Value.absent(),
            Value<String?> imageUrl1 = const Value.absent(),
            Value<String?> textNote = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<int?> movingType = const Value.absent(),
            Value<String?> traceId = const Value.absent(),
            Value<String?> updatedBy = const Value.absent(),
            Value<int?> createdBy = const Value.absent(),
            Value<double?> lengthh = const Value.absent(),
            Value<double?> width = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> weight = const Value.absent(),
            Value<double?> volume = const Value.absent(),
            Value<String?> inwardUoM = const Value.absent(),
            Value<double?> inwardPackQty = const Value.absent(),
            Value<String?> outwardUoM = const Value.absent(),
            Value<double?> outwardPackQty = const Value.absent(),
            Value<bool?> isPerishable = const Value.absent(),
            Value<bool?> hasExpiryDate = const Value.absent(),
            Value<int?> expiryDays = const Value.absent(),
            Value<int?> isFragile = const Value.absent(),
            Value<String?> manageBy = const Value.absent(),
            Value<String?> createdDateTime = const Value.absent(),
            Value<String?> color = const Value.absent(),
          }) =>
              DriftItemMasterCompanion(
            IMid: IMid,
            auditScheduleID: auditScheduleID,
            id: id,
            itemDisposition: itemDisposition,
            dispId: dispId,
            itemCode: itemCode,
            itemType: itemType,
            itemName: itemName,
            category: category,
            subCategory: subCategory,
            brand: brand,
            itemDescription: itemDescription,
            modelNo: modelNo,
            partCode: partCode,
            skucode: skucode,
            brandCode: brandCode,
            itemGroup: itemGroup,
            specification: specification,
            sizeCapacity: sizeCapacity,
            clasification: clasification,
            updatedDateTime: updatedDateTime,
            uoM: uoM,
            taxRate: taxRate,
            imageUrl1: imageUrl1,
            textNote: textNote,
            status: status,
            movingType: movingType,
            traceId: traceId,
            updatedBy: updatedBy,
            createdBy: createdBy,
            lengthh: lengthh,
            width: width,
            height: height,
            weight: weight,
            volume: volume,
            inwardUoM: inwardUoM,
            inwardPackQty: inwardPackQty,
            outwardUoM: outwardUoM,
            outwardPackQty: outwardPackQty,
            isPerishable: isPerishable,
            hasExpiryDate: hasExpiryDate,
            expiryDays: expiryDays,
            isFragile: isFragile,
            manageBy: manageBy,
            createdDateTime: createdDateTime,
            color: color,
          ),
          createCompanionCallback: ({
            Value<int> IMid = const Value.absent(),
            Value<int?> auditScheduleID = const Value.absent(),
            Value<int?> id = const Value.absent(),
            Value<int?> itemDisposition = const Value.absent(),
            Value<int?> dispId = const Value.absent(),
            Value<String?> itemCode = const Value.absent(),
            Value<String?> itemType = const Value.absent(),
            Value<String?> itemName = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<String?> subCategory = const Value.absent(),
            Value<String?> brand = const Value.absent(),
            Value<String?> itemDescription = const Value.absent(),
            Value<String?> modelNo = const Value.absent(),
            Value<String?> partCode = const Value.absent(),
            Value<String?> skucode = const Value.absent(),
            Value<String?> brandCode = const Value.absent(),
            Value<String?> itemGroup = const Value.absent(),
            Value<String?> specification = const Value.absent(),
            Value<String?> sizeCapacity = const Value.absent(),
            Value<String?> clasification = const Value.absent(),
            Value<String?> updatedDateTime = const Value.absent(),
            Value<String?> uoM = const Value.absent(),
            Value<double?> taxRate = const Value.absent(),
            Value<String?> imageUrl1 = const Value.absent(),
            Value<String?> textNote = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<int?> movingType = const Value.absent(),
            Value<String?> traceId = const Value.absent(),
            Value<String?> updatedBy = const Value.absent(),
            Value<int?> createdBy = const Value.absent(),
            Value<double?> lengthh = const Value.absent(),
            Value<double?> width = const Value.absent(),
            Value<double?> height = const Value.absent(),
            Value<double?> weight = const Value.absent(),
            Value<double?> volume = const Value.absent(),
            Value<String?> inwardUoM = const Value.absent(),
            Value<double?> inwardPackQty = const Value.absent(),
            Value<String?> outwardUoM = const Value.absent(),
            Value<double?> outwardPackQty = const Value.absent(),
            Value<bool?> isPerishable = const Value.absent(),
            Value<bool?> hasExpiryDate = const Value.absent(),
            Value<int?> expiryDays = const Value.absent(),
            Value<int?> isFragile = const Value.absent(),
            Value<String?> manageBy = const Value.absent(),
            Value<String?> createdDateTime = const Value.absent(),
            Value<String?> color = const Value.absent(),
          }) =>
              DriftItemMasterCompanion.insert(
            IMid: IMid,
            auditScheduleID: auditScheduleID,
            id: id,
            itemDisposition: itemDisposition,
            dispId: dispId,
            itemCode: itemCode,
            itemType: itemType,
            itemName: itemName,
            category: category,
            subCategory: subCategory,
            brand: brand,
            itemDescription: itemDescription,
            modelNo: modelNo,
            partCode: partCode,
            skucode: skucode,
            brandCode: brandCode,
            itemGroup: itemGroup,
            specification: specification,
            sizeCapacity: sizeCapacity,
            clasification: clasification,
            updatedDateTime: updatedDateTime,
            uoM: uoM,
            taxRate: taxRate,
            imageUrl1: imageUrl1,
            textNote: textNote,
            status: status,
            movingType: movingType,
            traceId: traceId,
            updatedBy: updatedBy,
            createdBy: createdBy,
            lengthh: lengthh,
            width: width,
            height: height,
            weight: weight,
            volume: volume,
            inwardUoM: inwardUoM,
            inwardPackQty: inwardPackQty,
            outwardUoM: outwardUoM,
            outwardPackQty: outwardPackQty,
            isPerishable: isPerishable,
            hasExpiryDate: hasExpiryDate,
            expiryDays: expiryDays,
            isFragile: isFragile,
            manageBy: manageBy,
            createdDateTime: createdDateTime,
            color: color,
          ),
        ));
}

class $$DriftItemMasterTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DriftItemMasterTable> {
  $$DriftItemMasterTableFilterComposer(super.$state);
  ColumnFilters<int> get IMid => $state.composableBuilder(
      column: $state.table.IMid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get auditScheduleID => $state.composableBuilder(
      column: $state.table.auditScheduleID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemDisposition => $state.composableBuilder(
      column: $state.table.itemDisposition,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get dispId => $state.composableBuilder(
      column: $state.table.dispId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemCode => $state.composableBuilder(
      column: $state.table.itemCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemType => $state.composableBuilder(
      column: $state.table.itemType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemName => $state.composableBuilder(
      column: $state.table.itemName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get subCategory => $state.composableBuilder(
      column: $state.table.subCategory,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get brand => $state.composableBuilder(
      column: $state.table.brand,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemDescription => $state.composableBuilder(
      column: $state.table.itemDescription,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get modelNo => $state.composableBuilder(
      column: $state.table.modelNo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get partCode => $state.composableBuilder(
      column: $state.table.partCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get skucode => $state.composableBuilder(
      column: $state.table.skucode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get brandCode => $state.composableBuilder(
      column: $state.table.brandCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemGroup => $state.composableBuilder(
      column: $state.table.itemGroup,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get specification => $state.composableBuilder(
      column: $state.table.specification,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sizeCapacity => $state.composableBuilder(
      column: $state.table.sizeCapacity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clasification => $state.composableBuilder(
      column: $state.table.clasification,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get updatedDateTime => $state.composableBuilder(
      column: $state.table.updatedDateTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get uoM => $state.composableBuilder(
      column: $state.table.uoM,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get taxRate => $state.composableBuilder(
      column: $state.table.taxRate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get imageUrl1 => $state.composableBuilder(
      column: $state.table.imageUrl1,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get textNote => $state.composableBuilder(
      column: $state.table.textNote,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get movingType => $state.composableBuilder(
      column: $state.table.movingType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get traceId => $state.composableBuilder(
      column: $state.table.traceId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get updatedBy => $state.composableBuilder(
      column: $state.table.updatedBy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createdBy => $state.composableBuilder(
      column: $state.table.createdBy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get lengthh => $state.composableBuilder(
      column: $state.table.lengthh,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get width => $state.composableBuilder(
      column: $state.table.width,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get height => $state.composableBuilder(
      column: $state.table.height,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get weight => $state.composableBuilder(
      column: $state.table.weight,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get volume => $state.composableBuilder(
      column: $state.table.volume,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get inwardUoM => $state.composableBuilder(
      column: $state.table.inwardUoM,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get inwardPackQty => $state.composableBuilder(
      column: $state.table.inwardPackQty,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get outwardUoM => $state.composableBuilder(
      column: $state.table.outwardUoM,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get outwardPackQty => $state.composableBuilder(
      column: $state.table.outwardPackQty,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isPerishable => $state.composableBuilder(
      column: $state.table.isPerishable,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get hasExpiryDate => $state.composableBuilder(
      column: $state.table.hasExpiryDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get expiryDays => $state.composableBuilder(
      column: $state.table.expiryDays,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get isFragile => $state.composableBuilder(
      column: $state.table.isFragile,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get manageBy => $state.composableBuilder(
      column: $state.table.manageBy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get createdDateTime => $state.composableBuilder(
      column: $state.table.createdDateTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DriftItemMasterTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DriftItemMasterTable> {
  $$DriftItemMasterTableOrderingComposer(super.$state);
  ColumnOrderings<int> get IMid => $state.composableBuilder(
      column: $state.table.IMid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get auditScheduleID => $state.composableBuilder(
      column: $state.table.auditScheduleID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemDisposition => $state.composableBuilder(
      column: $state.table.itemDisposition,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get dispId => $state.composableBuilder(
      column: $state.table.dispId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemCode => $state.composableBuilder(
      column: $state.table.itemCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemType => $state.composableBuilder(
      column: $state.table.itemType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemName => $state.composableBuilder(
      column: $state.table.itemName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get subCategory => $state.composableBuilder(
      column: $state.table.subCategory,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get brand => $state.composableBuilder(
      column: $state.table.brand,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemDescription => $state.composableBuilder(
      column: $state.table.itemDescription,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get modelNo => $state.composableBuilder(
      column: $state.table.modelNo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get partCode => $state.composableBuilder(
      column: $state.table.partCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get skucode => $state.composableBuilder(
      column: $state.table.skucode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get brandCode => $state.composableBuilder(
      column: $state.table.brandCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemGroup => $state.composableBuilder(
      column: $state.table.itemGroup,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get specification => $state.composableBuilder(
      column: $state.table.specification,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sizeCapacity => $state.composableBuilder(
      column: $state.table.sizeCapacity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clasification => $state.composableBuilder(
      column: $state.table.clasification,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get updatedDateTime => $state.composableBuilder(
      column: $state.table.updatedDateTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get uoM => $state.composableBuilder(
      column: $state.table.uoM,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get taxRate => $state.composableBuilder(
      column: $state.table.taxRate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get imageUrl1 => $state.composableBuilder(
      column: $state.table.imageUrl1,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get textNote => $state.composableBuilder(
      column: $state.table.textNote,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get movingType => $state.composableBuilder(
      column: $state.table.movingType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get traceId => $state.composableBuilder(
      column: $state.table.traceId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get updatedBy => $state.composableBuilder(
      column: $state.table.updatedBy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createdBy => $state.composableBuilder(
      column: $state.table.createdBy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get lengthh => $state.composableBuilder(
      column: $state.table.lengthh,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get width => $state.composableBuilder(
      column: $state.table.width,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get height => $state.composableBuilder(
      column: $state.table.height,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get weight => $state.composableBuilder(
      column: $state.table.weight,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get volume => $state.composableBuilder(
      column: $state.table.volume,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get inwardUoM => $state.composableBuilder(
      column: $state.table.inwardUoM,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get inwardPackQty => $state.composableBuilder(
      column: $state.table.inwardPackQty,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get outwardUoM => $state.composableBuilder(
      column: $state.table.outwardUoM,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get outwardPackQty => $state.composableBuilder(
      column: $state.table.outwardPackQty,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isPerishable => $state.composableBuilder(
      column: $state.table.isPerishable,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get hasExpiryDate => $state.composableBuilder(
      column: $state.table.hasExpiryDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get expiryDays => $state.composableBuilder(
      column: $state.table.expiryDays,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get isFragile => $state.composableBuilder(
      column: $state.table.isFragile,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get manageBy => $state.composableBuilder(
      column: $state.table.manageBy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get createdDateTime => $state.composableBuilder(
      column: $state.table.createdDateTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$DriftLineMasterTableCreateCompanionBuilder = DriftLineMasterCompanion
    Function({
  Value<int> IMid,
  Value<int?> autoId,
  Value<int?> scheduleID,
  Value<String?> whsCode,
  Value<int?> itemDisposition,
  Value<String?> itemCode,
  Value<String?> binCode,
  Value<String?> serialbatch,
  Value<double?> quantity,
  Value<String?> uom,
  Value<int?> createdBy,
  Value<String?> createdDatetime,
  Value<String?> inDate,
  Value<String?> expDate,
  Value<String?> updatedBy,
  Value<String?> updatedDatetime,
  Value<String?> traceid,
});
typedef $$DriftLineMasterTableUpdateCompanionBuilder = DriftLineMasterCompanion
    Function({
  Value<int> IMid,
  Value<int?> autoId,
  Value<int?> scheduleID,
  Value<String?> whsCode,
  Value<int?> itemDisposition,
  Value<String?> itemCode,
  Value<String?> binCode,
  Value<String?> serialbatch,
  Value<double?> quantity,
  Value<String?> uom,
  Value<int?> createdBy,
  Value<String?> createdDatetime,
  Value<String?> inDate,
  Value<String?> expDate,
  Value<String?> updatedBy,
  Value<String?> updatedDatetime,
  Value<String?> traceid,
});

class $$DriftLineMasterTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DriftLineMasterTable,
    DriftLineMasterData,
    $$DriftLineMasterTableFilterComposer,
    $$DriftLineMasterTableOrderingComposer,
    $$DriftLineMasterTableCreateCompanionBuilder,
    $$DriftLineMasterTableUpdateCompanionBuilder> {
  $$DriftLineMasterTableTableManager(
      _$AppDatabase db, $DriftLineMasterTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DriftLineMasterTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DriftLineMasterTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> IMid = const Value.absent(),
            Value<int?> autoId = const Value.absent(),
            Value<int?> scheduleID = const Value.absent(),
            Value<String?> whsCode = const Value.absent(),
            Value<int?> itemDisposition = const Value.absent(),
            Value<String?> itemCode = const Value.absent(),
            Value<String?> binCode = const Value.absent(),
            Value<String?> serialbatch = const Value.absent(),
            Value<double?> quantity = const Value.absent(),
            Value<String?> uom = const Value.absent(),
            Value<int?> createdBy = const Value.absent(),
            Value<String?> createdDatetime = const Value.absent(),
            Value<String?> inDate = const Value.absent(),
            Value<String?> expDate = const Value.absent(),
            Value<String?> updatedBy = const Value.absent(),
            Value<String?> updatedDatetime = const Value.absent(),
            Value<String?> traceid = const Value.absent(),
          }) =>
              DriftLineMasterCompanion(
            IMid: IMid,
            autoId: autoId,
            scheduleID: scheduleID,
            whsCode: whsCode,
            itemDisposition: itemDisposition,
            itemCode: itemCode,
            binCode: binCode,
            serialbatch: serialbatch,
            quantity: quantity,
            uom: uom,
            createdBy: createdBy,
            createdDatetime: createdDatetime,
            inDate: inDate,
            expDate: expDate,
            updatedBy: updatedBy,
            updatedDatetime: updatedDatetime,
            traceid: traceid,
          ),
          createCompanionCallback: ({
            Value<int> IMid = const Value.absent(),
            Value<int?> autoId = const Value.absent(),
            Value<int?> scheduleID = const Value.absent(),
            Value<String?> whsCode = const Value.absent(),
            Value<int?> itemDisposition = const Value.absent(),
            Value<String?> itemCode = const Value.absent(),
            Value<String?> binCode = const Value.absent(),
            Value<String?> serialbatch = const Value.absent(),
            Value<double?> quantity = const Value.absent(),
            Value<String?> uom = const Value.absent(),
            Value<int?> createdBy = const Value.absent(),
            Value<String?> createdDatetime = const Value.absent(),
            Value<String?> inDate = const Value.absent(),
            Value<String?> expDate = const Value.absent(),
            Value<String?> updatedBy = const Value.absent(),
            Value<String?> updatedDatetime = const Value.absent(),
            Value<String?> traceid = const Value.absent(),
          }) =>
              DriftLineMasterCompanion.insert(
            IMid: IMid,
            autoId: autoId,
            scheduleID: scheduleID,
            whsCode: whsCode,
            itemDisposition: itemDisposition,
            itemCode: itemCode,
            binCode: binCode,
            serialbatch: serialbatch,
            quantity: quantity,
            uom: uom,
            createdBy: createdBy,
            createdDatetime: createdDatetime,
            inDate: inDate,
            expDate: expDate,
            updatedBy: updatedBy,
            updatedDatetime: updatedDatetime,
            traceid: traceid,
          ),
        ));
}

class $$DriftLineMasterTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DriftLineMasterTable> {
  $$DriftLineMasterTableFilterComposer(super.$state);
  ColumnFilters<int> get IMid => $state.composableBuilder(
      column: $state.table.IMid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get autoId => $state.composableBuilder(
      column: $state.table.autoId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get scheduleID => $state.composableBuilder(
      column: $state.table.scheduleID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get whsCode => $state.composableBuilder(
      column: $state.table.whsCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemDisposition => $state.composableBuilder(
      column: $state.table.itemDisposition,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemCode => $state.composableBuilder(
      column: $state.table.itemCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get binCode => $state.composableBuilder(
      column: $state.table.binCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get serialbatch => $state.composableBuilder(
      column: $state.table.serialbatch,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get uom => $state.composableBuilder(
      column: $state.table.uom,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createdBy => $state.composableBuilder(
      column: $state.table.createdBy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get createdDatetime => $state.composableBuilder(
      column: $state.table.createdDatetime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get inDate => $state.composableBuilder(
      column: $state.table.inDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get expDate => $state.composableBuilder(
      column: $state.table.expDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get updatedBy => $state.composableBuilder(
      column: $state.table.updatedBy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get updatedDatetime => $state.composableBuilder(
      column: $state.table.updatedDatetime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get traceid => $state.composableBuilder(
      column: $state.table.traceid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DriftLineMasterTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DriftLineMasterTable> {
  $$DriftLineMasterTableOrderingComposer(super.$state);
  ColumnOrderings<int> get IMid => $state.composableBuilder(
      column: $state.table.IMid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get autoId => $state.composableBuilder(
      column: $state.table.autoId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get scheduleID => $state.composableBuilder(
      column: $state.table.scheduleID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get whsCode => $state.composableBuilder(
      column: $state.table.whsCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemDisposition => $state.composableBuilder(
      column: $state.table.itemDisposition,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemCode => $state.composableBuilder(
      column: $state.table.itemCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get binCode => $state.composableBuilder(
      column: $state.table.binCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get serialbatch => $state.composableBuilder(
      column: $state.table.serialbatch,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get uom => $state.composableBuilder(
      column: $state.table.uom,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createdBy => $state.composableBuilder(
      column: $state.table.createdBy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get createdDatetime => $state.composableBuilder(
      column: $state.table.createdDatetime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get inDate => $state.composableBuilder(
      column: $state.table.inDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get expDate => $state.composableBuilder(
      column: $state.table.expDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get updatedBy => $state.composableBuilder(
      column: $state.table.updatedBy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get updatedDatetime => $state.composableBuilder(
      column: $state.table.updatedDatetime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get traceid => $state.composableBuilder(
      column: $state.table.traceid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$DriftBinMasterTableCreateCompanionBuilder = DriftBinMasterCompanion
    Function({
  Value<String?> areaCode,
  Value<int?> auditId,
  Value<String?> binCode,
  Value<String?> rackCode,
  Value<int?> status,
  Value<String?> whsCode,
  Value<String?> zoneCode,
  Value<int> rowid,
});
typedef $$DriftBinMasterTableUpdateCompanionBuilder = DriftBinMasterCompanion
    Function({
  Value<String?> areaCode,
  Value<int?> auditId,
  Value<String?> binCode,
  Value<String?> rackCode,
  Value<int?> status,
  Value<String?> whsCode,
  Value<String?> zoneCode,
  Value<int> rowid,
});

class $$DriftBinMasterTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DriftBinMasterTable,
    DriftBinMasterData,
    $$DriftBinMasterTableFilterComposer,
    $$DriftBinMasterTableOrderingComposer,
    $$DriftBinMasterTableCreateCompanionBuilder,
    $$DriftBinMasterTableUpdateCompanionBuilder> {
  $$DriftBinMasterTableTableManager(
      _$AppDatabase db, $DriftBinMasterTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DriftBinMasterTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DriftBinMasterTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String?> areaCode = const Value.absent(),
            Value<int?> auditId = const Value.absent(),
            Value<String?> binCode = const Value.absent(),
            Value<String?> rackCode = const Value.absent(),
            Value<int?> status = const Value.absent(),
            Value<String?> whsCode = const Value.absent(),
            Value<String?> zoneCode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DriftBinMasterCompanion(
            areaCode: areaCode,
            auditId: auditId,
            binCode: binCode,
            rackCode: rackCode,
            status: status,
            whsCode: whsCode,
            zoneCode: zoneCode,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String?> areaCode = const Value.absent(),
            Value<int?> auditId = const Value.absent(),
            Value<String?> binCode = const Value.absent(),
            Value<String?> rackCode = const Value.absent(),
            Value<int?> status = const Value.absent(),
            Value<String?> whsCode = const Value.absent(),
            Value<String?> zoneCode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DriftBinMasterCompanion.insert(
            areaCode: areaCode,
            auditId: auditId,
            binCode: binCode,
            rackCode: rackCode,
            status: status,
            whsCode: whsCode,
            zoneCode: zoneCode,
            rowid: rowid,
          ),
        ));
}

class $$DriftBinMasterTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DriftBinMasterTable> {
  $$DriftBinMasterTableFilterComposer(super.$state);
  ColumnFilters<String> get areaCode => $state.composableBuilder(
      column: $state.table.areaCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get auditId => $state.composableBuilder(
      column: $state.table.auditId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get binCode => $state.composableBuilder(
      column: $state.table.binCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get rackCode => $state.composableBuilder(
      column: $state.table.rackCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get whsCode => $state.composableBuilder(
      column: $state.table.whsCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get zoneCode => $state.composableBuilder(
      column: $state.table.zoneCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DriftBinMasterTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DriftBinMasterTable> {
  $$DriftBinMasterTableOrderingComposer(super.$state);
  ColumnOrderings<String> get areaCode => $state.composableBuilder(
      column: $state.table.areaCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get auditId => $state.composableBuilder(
      column: $state.table.auditId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get binCode => $state.composableBuilder(
      column: $state.table.binCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get rackCode => $state.composableBuilder(
      column: $state.table.rackCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get whsCode => $state.composableBuilder(
      column: $state.table.whsCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get zoneCode => $state.composableBuilder(
      column: $state.table.zoneCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$CheckListHeaderMasterTableCreateCompanionBuilder
    = CheckListHeaderMasterCompanion Function({
  Value<String?> areaCode,
  Value<int?> docEntry,
  Value<String?> binCode,
  Value<String?> rackCode,
  Value<bool?> status,
  Value<String?> whsCode,
  Value<String?> zoneCode,
  Value<String?> category,
  Value<String?> brand,
  Value<int?> createdBy,
  Value<String?> createdDateTime,
  Value<int?> checklistTemplate,
  Value<String?> disposition,
  Value<int?> forAgesAbove,
  Value<bool?> hasExpiryDate,
  Value<int?> isFragile,
  Value<String?> itemCode,
  Value<String?> itemStatus,
  Value<String?> manageBy,
  Value<bool?> previousDispute,
  Value<bool?> serialBatchManualTyped,
  Value<String?> serialBatch,
  Value<String?> sizeCapacity,
  Value<String?> specification,
  Value<String?> subCategory,
  Value<String?> updatedBy,
  Value<String?> updatedDateTime,
  Value<bool?> whileOffline,
  Value<String?> traceid,
  Value<int> rowid,
});
typedef $$CheckListHeaderMasterTableUpdateCompanionBuilder
    = CheckListHeaderMasterCompanion Function({
  Value<String?> areaCode,
  Value<int?> docEntry,
  Value<String?> binCode,
  Value<String?> rackCode,
  Value<bool?> status,
  Value<String?> whsCode,
  Value<String?> zoneCode,
  Value<String?> category,
  Value<String?> brand,
  Value<int?> createdBy,
  Value<String?> createdDateTime,
  Value<int?> checklistTemplate,
  Value<String?> disposition,
  Value<int?> forAgesAbove,
  Value<bool?> hasExpiryDate,
  Value<int?> isFragile,
  Value<String?> itemCode,
  Value<String?> itemStatus,
  Value<String?> manageBy,
  Value<bool?> previousDispute,
  Value<bool?> serialBatchManualTyped,
  Value<String?> serialBatch,
  Value<String?> sizeCapacity,
  Value<String?> specification,
  Value<String?> subCategory,
  Value<String?> updatedBy,
  Value<String?> updatedDateTime,
  Value<bool?> whileOffline,
  Value<String?> traceid,
  Value<int> rowid,
});

class $$CheckListHeaderMasterTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CheckListHeaderMasterTable,
    CheckListHeaderMasterData,
    $$CheckListHeaderMasterTableFilterComposer,
    $$CheckListHeaderMasterTableOrderingComposer,
    $$CheckListHeaderMasterTableCreateCompanionBuilder,
    $$CheckListHeaderMasterTableUpdateCompanionBuilder> {
  $$CheckListHeaderMasterTableTableManager(
      _$AppDatabase db, $CheckListHeaderMasterTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$CheckListHeaderMasterTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$CheckListHeaderMasterTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String?> areaCode = const Value.absent(),
            Value<int?> docEntry = const Value.absent(),
            Value<String?> binCode = const Value.absent(),
            Value<String?> rackCode = const Value.absent(),
            Value<bool?> status = const Value.absent(),
            Value<String?> whsCode = const Value.absent(),
            Value<String?> zoneCode = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<String?> brand = const Value.absent(),
            Value<int?> createdBy = const Value.absent(),
            Value<String?> createdDateTime = const Value.absent(),
            Value<int?> checklistTemplate = const Value.absent(),
            Value<String?> disposition = const Value.absent(),
            Value<int?> forAgesAbove = const Value.absent(),
            Value<bool?> hasExpiryDate = const Value.absent(),
            Value<int?> isFragile = const Value.absent(),
            Value<String?> itemCode = const Value.absent(),
            Value<String?> itemStatus = const Value.absent(),
            Value<String?> manageBy = const Value.absent(),
            Value<bool?> previousDispute = const Value.absent(),
            Value<bool?> serialBatchManualTyped = const Value.absent(),
            Value<String?> serialBatch = const Value.absent(),
            Value<String?> sizeCapacity = const Value.absent(),
            Value<String?> specification = const Value.absent(),
            Value<String?> subCategory = const Value.absent(),
            Value<String?> updatedBy = const Value.absent(),
            Value<String?> updatedDateTime = const Value.absent(),
            Value<bool?> whileOffline = const Value.absent(),
            Value<String?> traceid = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CheckListHeaderMasterCompanion(
            areaCode: areaCode,
            docEntry: docEntry,
            binCode: binCode,
            rackCode: rackCode,
            status: status,
            whsCode: whsCode,
            zoneCode: zoneCode,
            category: category,
            brand: brand,
            createdBy: createdBy,
            createdDateTime: createdDateTime,
            checklistTemplate: checklistTemplate,
            disposition: disposition,
            forAgesAbove: forAgesAbove,
            hasExpiryDate: hasExpiryDate,
            isFragile: isFragile,
            itemCode: itemCode,
            itemStatus: itemStatus,
            manageBy: manageBy,
            previousDispute: previousDispute,
            serialBatchManualTyped: serialBatchManualTyped,
            serialBatch: serialBatch,
            sizeCapacity: sizeCapacity,
            specification: specification,
            subCategory: subCategory,
            updatedBy: updatedBy,
            updatedDateTime: updatedDateTime,
            whileOffline: whileOffline,
            traceid: traceid,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String?> areaCode = const Value.absent(),
            Value<int?> docEntry = const Value.absent(),
            Value<String?> binCode = const Value.absent(),
            Value<String?> rackCode = const Value.absent(),
            Value<bool?> status = const Value.absent(),
            Value<String?> whsCode = const Value.absent(),
            Value<String?> zoneCode = const Value.absent(),
            Value<String?> category = const Value.absent(),
            Value<String?> brand = const Value.absent(),
            Value<int?> createdBy = const Value.absent(),
            Value<String?> createdDateTime = const Value.absent(),
            Value<int?> checklistTemplate = const Value.absent(),
            Value<String?> disposition = const Value.absent(),
            Value<int?> forAgesAbove = const Value.absent(),
            Value<bool?> hasExpiryDate = const Value.absent(),
            Value<int?> isFragile = const Value.absent(),
            Value<String?> itemCode = const Value.absent(),
            Value<String?> itemStatus = const Value.absent(),
            Value<String?> manageBy = const Value.absent(),
            Value<bool?> previousDispute = const Value.absent(),
            Value<bool?> serialBatchManualTyped = const Value.absent(),
            Value<String?> serialBatch = const Value.absent(),
            Value<String?> sizeCapacity = const Value.absent(),
            Value<String?> specification = const Value.absent(),
            Value<String?> subCategory = const Value.absent(),
            Value<String?> updatedBy = const Value.absent(),
            Value<String?> updatedDateTime = const Value.absent(),
            Value<bool?> whileOffline = const Value.absent(),
            Value<String?> traceid = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CheckListHeaderMasterCompanion.insert(
            areaCode: areaCode,
            docEntry: docEntry,
            binCode: binCode,
            rackCode: rackCode,
            status: status,
            whsCode: whsCode,
            zoneCode: zoneCode,
            category: category,
            brand: brand,
            createdBy: createdBy,
            createdDateTime: createdDateTime,
            checklistTemplate: checklistTemplate,
            disposition: disposition,
            forAgesAbove: forAgesAbove,
            hasExpiryDate: hasExpiryDate,
            isFragile: isFragile,
            itemCode: itemCode,
            itemStatus: itemStatus,
            manageBy: manageBy,
            previousDispute: previousDispute,
            serialBatchManualTyped: serialBatchManualTyped,
            serialBatch: serialBatch,
            sizeCapacity: sizeCapacity,
            specification: specification,
            subCategory: subCategory,
            updatedBy: updatedBy,
            updatedDateTime: updatedDateTime,
            whileOffline: whileOffline,
            traceid: traceid,
            rowid: rowid,
          ),
        ));
}

class $$CheckListHeaderMasterTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CheckListHeaderMasterTable> {
  $$CheckListHeaderMasterTableFilterComposer(super.$state);
  ColumnFilters<String> get areaCode => $state.composableBuilder(
      column: $state.table.areaCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get docEntry => $state.composableBuilder(
      column: $state.table.docEntry,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get binCode => $state.composableBuilder(
      column: $state.table.binCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get rackCode => $state.composableBuilder(
      column: $state.table.rackCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get whsCode => $state.composableBuilder(
      column: $state.table.whsCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get zoneCode => $state.composableBuilder(
      column: $state.table.zoneCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get brand => $state.composableBuilder(
      column: $state.table.brand,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createdBy => $state.composableBuilder(
      column: $state.table.createdBy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get createdDateTime => $state.composableBuilder(
      column: $state.table.createdDateTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get checklistTemplate => $state.composableBuilder(
      column: $state.table.checklistTemplate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get disposition => $state.composableBuilder(
      column: $state.table.disposition,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get forAgesAbove => $state.composableBuilder(
      column: $state.table.forAgesAbove,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get hasExpiryDate => $state.composableBuilder(
      column: $state.table.hasExpiryDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get isFragile => $state.composableBuilder(
      column: $state.table.isFragile,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemCode => $state.composableBuilder(
      column: $state.table.itemCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemStatus => $state.composableBuilder(
      column: $state.table.itemStatus,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get manageBy => $state.composableBuilder(
      column: $state.table.manageBy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get previousDispute => $state.composableBuilder(
      column: $state.table.previousDispute,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get serialBatchManualTyped => $state.composableBuilder(
      column: $state.table.serialBatchManualTyped,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get serialBatch => $state.composableBuilder(
      column: $state.table.serialBatch,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sizeCapacity => $state.composableBuilder(
      column: $state.table.sizeCapacity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get specification => $state.composableBuilder(
      column: $state.table.specification,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get subCategory => $state.composableBuilder(
      column: $state.table.subCategory,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get updatedBy => $state.composableBuilder(
      column: $state.table.updatedBy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get updatedDateTime => $state.composableBuilder(
      column: $state.table.updatedDateTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get whileOffline => $state.composableBuilder(
      column: $state.table.whileOffline,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get traceid => $state.composableBuilder(
      column: $state.table.traceid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CheckListHeaderMasterTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CheckListHeaderMasterTable> {
  $$CheckListHeaderMasterTableOrderingComposer(super.$state);
  ColumnOrderings<String> get areaCode => $state.composableBuilder(
      column: $state.table.areaCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get docEntry => $state.composableBuilder(
      column: $state.table.docEntry,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get binCode => $state.composableBuilder(
      column: $state.table.binCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get rackCode => $state.composableBuilder(
      column: $state.table.rackCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get whsCode => $state.composableBuilder(
      column: $state.table.whsCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get zoneCode => $state.composableBuilder(
      column: $state.table.zoneCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get brand => $state.composableBuilder(
      column: $state.table.brand,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createdBy => $state.composableBuilder(
      column: $state.table.createdBy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get createdDateTime => $state.composableBuilder(
      column: $state.table.createdDateTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get checklistTemplate => $state.composableBuilder(
      column: $state.table.checklistTemplate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get disposition => $state.composableBuilder(
      column: $state.table.disposition,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get forAgesAbove => $state.composableBuilder(
      column: $state.table.forAgesAbove,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get hasExpiryDate => $state.composableBuilder(
      column: $state.table.hasExpiryDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get isFragile => $state.composableBuilder(
      column: $state.table.isFragile,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemCode => $state.composableBuilder(
      column: $state.table.itemCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemStatus => $state.composableBuilder(
      column: $state.table.itemStatus,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get manageBy => $state.composableBuilder(
      column: $state.table.manageBy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get previousDispute => $state.composableBuilder(
      column: $state.table.previousDispute,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get serialBatchManualTyped => $state.composableBuilder(
      column: $state.table.serialBatchManualTyped,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get serialBatch => $state.composableBuilder(
      column: $state.table.serialBatch,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sizeCapacity => $state.composableBuilder(
      column: $state.table.sizeCapacity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get specification => $state.composableBuilder(
      column: $state.table.specification,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get subCategory => $state.composableBuilder(
      column: $state.table.subCategory,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get updatedBy => $state.composableBuilder(
      column: $state.table.updatedBy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get updatedDateTime => $state.composableBuilder(
      column: $state.table.updatedDateTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get whileOffline => $state.composableBuilder(
      column: $state.table.whileOffline,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get traceid => $state.composableBuilder(
      column: $state.table.traceid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$DriftCheckLineMasterTableCreateCompanionBuilder
    = DriftCheckLineMasterCompanion Function({
  Value<int?> docEntry,
  Value<int?> docEntry1,
  Value<String?> templateName,
  Value<String?> checklistCode,
  Value<String?> checklistName,
  Value<String?> listValue,
  Value<bool?> acceptAttach,
  Value<bool?> acceptMultiValue,
  Value<bool?> isMandaory,
  Value<int?> createdBy,
  Value<String?> createdDatetime,
  Value<String?> updatedBy,
  Value<String?> updatedDatetime,
  Value<String?> traceid,
  Value<int> rowid,
});
typedef $$DriftCheckLineMasterTableUpdateCompanionBuilder
    = DriftCheckLineMasterCompanion Function({
  Value<int?> docEntry,
  Value<int?> docEntry1,
  Value<String?> templateName,
  Value<String?> checklistCode,
  Value<String?> checklistName,
  Value<String?> listValue,
  Value<bool?> acceptAttach,
  Value<bool?> acceptMultiValue,
  Value<bool?> isMandaory,
  Value<int?> createdBy,
  Value<String?> createdDatetime,
  Value<String?> updatedBy,
  Value<String?> updatedDatetime,
  Value<String?> traceid,
  Value<int> rowid,
});

class $$DriftCheckLineMasterTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DriftCheckLineMasterTable,
    DriftCheckLineMasterData,
    $$DriftCheckLineMasterTableFilterComposer,
    $$DriftCheckLineMasterTableOrderingComposer,
    $$DriftCheckLineMasterTableCreateCompanionBuilder,
    $$DriftCheckLineMasterTableUpdateCompanionBuilder> {
  $$DriftCheckLineMasterTableTableManager(
      _$AppDatabase db, $DriftCheckLineMasterTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$DriftCheckLineMasterTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$DriftCheckLineMasterTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int?> docEntry = const Value.absent(),
            Value<int?> docEntry1 = const Value.absent(),
            Value<String?> templateName = const Value.absent(),
            Value<String?> checklistCode = const Value.absent(),
            Value<String?> checklistName = const Value.absent(),
            Value<String?> listValue = const Value.absent(),
            Value<bool?> acceptAttach = const Value.absent(),
            Value<bool?> acceptMultiValue = const Value.absent(),
            Value<bool?> isMandaory = const Value.absent(),
            Value<int?> createdBy = const Value.absent(),
            Value<String?> createdDatetime = const Value.absent(),
            Value<String?> updatedBy = const Value.absent(),
            Value<String?> updatedDatetime = const Value.absent(),
            Value<String?> traceid = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DriftCheckLineMasterCompanion(
            docEntry: docEntry,
            docEntry1: docEntry1,
            templateName: templateName,
            checklistCode: checklistCode,
            checklistName: checklistName,
            listValue: listValue,
            acceptAttach: acceptAttach,
            acceptMultiValue: acceptMultiValue,
            isMandaory: isMandaory,
            createdBy: createdBy,
            createdDatetime: createdDatetime,
            updatedBy: updatedBy,
            updatedDatetime: updatedDatetime,
            traceid: traceid,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<int?> docEntry = const Value.absent(),
            Value<int?> docEntry1 = const Value.absent(),
            Value<String?> templateName = const Value.absent(),
            Value<String?> checklistCode = const Value.absent(),
            Value<String?> checklistName = const Value.absent(),
            Value<String?> listValue = const Value.absent(),
            Value<bool?> acceptAttach = const Value.absent(),
            Value<bool?> acceptMultiValue = const Value.absent(),
            Value<bool?> isMandaory = const Value.absent(),
            Value<int?> createdBy = const Value.absent(),
            Value<String?> createdDatetime = const Value.absent(),
            Value<String?> updatedBy = const Value.absent(),
            Value<String?> updatedDatetime = const Value.absent(),
            Value<String?> traceid = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DriftCheckLineMasterCompanion.insert(
            docEntry: docEntry,
            docEntry1: docEntry1,
            templateName: templateName,
            checklistCode: checklistCode,
            checklistName: checklistName,
            listValue: listValue,
            acceptAttach: acceptAttach,
            acceptMultiValue: acceptMultiValue,
            isMandaory: isMandaory,
            createdBy: createdBy,
            createdDatetime: createdDatetime,
            updatedBy: updatedBy,
            updatedDatetime: updatedDatetime,
            traceid: traceid,
            rowid: rowid,
          ),
        ));
}

class $$DriftCheckLineMasterTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DriftCheckLineMasterTable> {
  $$DriftCheckLineMasterTableFilterComposer(super.$state);
  ColumnFilters<int> get docEntry => $state.composableBuilder(
      column: $state.table.docEntry,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get docEntry1 => $state.composableBuilder(
      column: $state.table.docEntry1,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get templateName => $state.composableBuilder(
      column: $state.table.templateName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get checklistCode => $state.composableBuilder(
      column: $state.table.checklistCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get checklistName => $state.composableBuilder(
      column: $state.table.checklistName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get listValue => $state.composableBuilder(
      column: $state.table.listValue,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get acceptAttach => $state.composableBuilder(
      column: $state.table.acceptAttach,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get acceptMultiValue => $state.composableBuilder(
      column: $state.table.acceptMultiValue,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isMandaory => $state.composableBuilder(
      column: $state.table.isMandaory,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createdBy => $state.composableBuilder(
      column: $state.table.createdBy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get createdDatetime => $state.composableBuilder(
      column: $state.table.createdDatetime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get updatedBy => $state.composableBuilder(
      column: $state.table.updatedBy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get updatedDatetime => $state.composableBuilder(
      column: $state.table.updatedDatetime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get traceid => $state.composableBuilder(
      column: $state.table.traceid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DriftCheckLineMasterTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DriftCheckLineMasterTable> {
  $$DriftCheckLineMasterTableOrderingComposer(super.$state);
  ColumnOrderings<int> get docEntry => $state.composableBuilder(
      column: $state.table.docEntry,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get docEntry1 => $state.composableBuilder(
      column: $state.table.docEntry1,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get templateName => $state.composableBuilder(
      column: $state.table.templateName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get checklistCode => $state.composableBuilder(
      column: $state.table.checklistCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get checklistName => $state.composableBuilder(
      column: $state.table.checklistName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get listValue => $state.composableBuilder(
      column: $state.table.listValue,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get acceptAttach => $state.composableBuilder(
      column: $state.table.acceptAttach,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get acceptMultiValue => $state.composableBuilder(
      column: $state.table.acceptMultiValue,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isMandaory => $state.composableBuilder(
      column: $state.table.isMandaory,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createdBy => $state.composableBuilder(
      column: $state.table.createdBy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get createdDatetime => $state.composableBuilder(
      column: $state.table.createdDatetime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get updatedBy => $state.composableBuilder(
      column: $state.table.updatedBy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get updatedDatetime => $state.composableBuilder(
      column: $state.table.updatedDatetime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get traceid => $state.composableBuilder(
      column: $state.table.traceid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$DriftScanPostMasterTableCreateCompanionBuilder
    = DriftScanPostMasterCompanion Function({
  Value<int> IMid,
  Value<int?> auditid,
  Value<String?> whscode,
  Value<String?> bincode,
  Value<String?> itemcode,
  Value<String?> serialbatch,
  Value<double?> quantity,
  Value<String?> stockstatus,
  Value<String?> notes,
  Value<String?> devicecode,
  Value<String?> scandatetime,
  Value<int?> ismanual,
  Value<int?> templateid,
  Value<String?> scanguid,
});
typedef $$DriftScanPostMasterTableUpdateCompanionBuilder
    = DriftScanPostMasterCompanion Function({
  Value<int> IMid,
  Value<int?> auditid,
  Value<String?> whscode,
  Value<String?> bincode,
  Value<String?> itemcode,
  Value<String?> serialbatch,
  Value<double?> quantity,
  Value<String?> stockstatus,
  Value<String?> notes,
  Value<String?> devicecode,
  Value<String?> scandatetime,
  Value<int?> ismanual,
  Value<int?> templateid,
  Value<String?> scanguid,
});

class $$DriftScanPostMasterTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DriftScanPostMasterTable,
    DriftScanPostMasterData,
    $$DriftScanPostMasterTableFilterComposer,
    $$DriftScanPostMasterTableOrderingComposer,
    $$DriftScanPostMasterTableCreateCompanionBuilder,
    $$DriftScanPostMasterTableUpdateCompanionBuilder> {
  $$DriftScanPostMasterTableTableManager(
      _$AppDatabase db, $DriftScanPostMasterTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$DriftScanPostMasterTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$DriftScanPostMasterTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> IMid = const Value.absent(),
            Value<int?> auditid = const Value.absent(),
            Value<String?> whscode = const Value.absent(),
            Value<String?> bincode = const Value.absent(),
            Value<String?> itemcode = const Value.absent(),
            Value<String?> serialbatch = const Value.absent(),
            Value<double?> quantity = const Value.absent(),
            Value<String?> stockstatus = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> devicecode = const Value.absent(),
            Value<String?> scandatetime = const Value.absent(),
            Value<int?> ismanual = const Value.absent(),
            Value<int?> templateid = const Value.absent(),
            Value<String?> scanguid = const Value.absent(),
          }) =>
              DriftScanPostMasterCompanion(
            IMid: IMid,
            auditid: auditid,
            whscode: whscode,
            bincode: bincode,
            itemcode: itemcode,
            serialbatch: serialbatch,
            quantity: quantity,
            stockstatus: stockstatus,
            notes: notes,
            devicecode: devicecode,
            scandatetime: scandatetime,
            ismanual: ismanual,
            templateid: templateid,
            scanguid: scanguid,
          ),
          createCompanionCallback: ({
            Value<int> IMid = const Value.absent(),
            Value<int?> auditid = const Value.absent(),
            Value<String?> whscode = const Value.absent(),
            Value<String?> bincode = const Value.absent(),
            Value<String?> itemcode = const Value.absent(),
            Value<String?> serialbatch = const Value.absent(),
            Value<double?> quantity = const Value.absent(),
            Value<String?> stockstatus = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> devicecode = const Value.absent(),
            Value<String?> scandatetime = const Value.absent(),
            Value<int?> ismanual = const Value.absent(),
            Value<int?> templateid = const Value.absent(),
            Value<String?> scanguid = const Value.absent(),
          }) =>
              DriftScanPostMasterCompanion.insert(
            IMid: IMid,
            auditid: auditid,
            whscode: whscode,
            bincode: bincode,
            itemcode: itemcode,
            serialbatch: serialbatch,
            quantity: quantity,
            stockstatus: stockstatus,
            notes: notes,
            devicecode: devicecode,
            scandatetime: scandatetime,
            ismanual: ismanual,
            templateid: templateid,
            scanguid: scanguid,
          ),
        ));
}

class $$DriftScanPostMasterTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DriftScanPostMasterTable> {
  $$DriftScanPostMasterTableFilterComposer(super.$state);
  ColumnFilters<int> get IMid => $state.composableBuilder(
      column: $state.table.IMid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get auditid => $state.composableBuilder(
      column: $state.table.auditid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get whscode => $state.composableBuilder(
      column: $state.table.whscode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get bincode => $state.composableBuilder(
      column: $state.table.bincode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemcode => $state.composableBuilder(
      column: $state.table.itemcode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get serialbatch => $state.composableBuilder(
      column: $state.table.serialbatch,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get stockstatus => $state.composableBuilder(
      column: $state.table.stockstatus,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get notes => $state.composableBuilder(
      column: $state.table.notes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get devicecode => $state.composableBuilder(
      column: $state.table.devicecode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get scandatetime => $state.composableBuilder(
      column: $state.table.scandatetime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get ismanual => $state.composableBuilder(
      column: $state.table.ismanual,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get templateid => $state.composableBuilder(
      column: $state.table.templateid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get scanguid => $state.composableBuilder(
      column: $state.table.scanguid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DriftScanPostMasterTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DriftScanPostMasterTable> {
  $$DriftScanPostMasterTableOrderingComposer(super.$state);
  ColumnOrderings<int> get IMid => $state.composableBuilder(
      column: $state.table.IMid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get auditid => $state.composableBuilder(
      column: $state.table.auditid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get whscode => $state.composableBuilder(
      column: $state.table.whscode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get bincode => $state.composableBuilder(
      column: $state.table.bincode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemcode => $state.composableBuilder(
      column: $state.table.itemcode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get serialbatch => $state.composableBuilder(
      column: $state.table.serialbatch,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get stockstatus => $state.composableBuilder(
      column: $state.table.stockstatus,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get notes => $state.composableBuilder(
      column: $state.table.notes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get devicecode => $state.composableBuilder(
      column: $state.table.devicecode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get scandatetime => $state.composableBuilder(
      column: $state.table.scandatetime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get ismanual => $state.composableBuilder(
      column: $state.table.ismanual,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get templateid => $state.composableBuilder(
      column: $state.table.templateid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get scanguid => $state.composableBuilder(
      column: $state.table.scanguid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$DriftDispMasterTableCreateCompanionBuilder = DriftDispMasterCompanion
    Function({
  Value<int> IMid,
  Value<int?> auditid,
  Value<String?> checklistcode,
  Value<String?> checklistvalue,
  Value<String?> attachurl,
});
typedef $$DriftDispMasterTableUpdateCompanionBuilder = DriftDispMasterCompanion
    Function({
  Value<int> IMid,
  Value<int?> auditid,
  Value<String?> checklistcode,
  Value<String?> checklistvalue,
  Value<String?> attachurl,
});

class $$DriftDispMasterTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DriftDispMasterTable,
    DriftDispMasterData,
    $$DriftDispMasterTableFilterComposer,
    $$DriftDispMasterTableOrderingComposer,
    $$DriftDispMasterTableCreateCompanionBuilder,
    $$DriftDispMasterTableUpdateCompanionBuilder> {
  $$DriftDispMasterTableTableManager(
      _$AppDatabase db, $DriftDispMasterTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DriftDispMasterTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DriftDispMasterTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> IMid = const Value.absent(),
            Value<int?> auditid = const Value.absent(),
            Value<String?> checklistcode = const Value.absent(),
            Value<String?> checklistvalue = const Value.absent(),
            Value<String?> attachurl = const Value.absent(),
          }) =>
              DriftDispMasterCompanion(
            IMid: IMid,
            auditid: auditid,
            checklistcode: checklistcode,
            checklistvalue: checklistvalue,
            attachurl: attachurl,
          ),
          createCompanionCallback: ({
            Value<int> IMid = const Value.absent(),
            Value<int?> auditid = const Value.absent(),
            Value<String?> checklistcode = const Value.absent(),
            Value<String?> checklistvalue = const Value.absent(),
            Value<String?> attachurl = const Value.absent(),
          }) =>
              DriftDispMasterCompanion.insert(
            IMid: IMid,
            auditid: auditid,
            checklistcode: checklistcode,
            checklistvalue: checklistvalue,
            attachurl: attachurl,
          ),
        ));
}

class $$DriftDispMasterTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DriftDispMasterTable> {
  $$DriftDispMasterTableFilterComposer(super.$state);
  ColumnFilters<int> get IMid => $state.composableBuilder(
      column: $state.table.IMid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get auditid => $state.composableBuilder(
      column: $state.table.auditid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get checklistcode => $state.composableBuilder(
      column: $state.table.checklistcode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get checklistvalue => $state.composableBuilder(
      column: $state.table.checklistvalue,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachurl => $state.composableBuilder(
      column: $state.table.attachurl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DriftDispMasterTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DriftDispMasterTable> {
  $$DriftDispMasterTableOrderingComposer(super.$state);
  ColumnOrderings<int> get IMid => $state.composableBuilder(
      column: $state.table.IMid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get auditid => $state.composableBuilder(
      column: $state.table.auditid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get checklistcode => $state.composableBuilder(
      column: $state.table.checklistcode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get checklistvalue => $state.composableBuilder(
      column: $state.table.checklistvalue,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachurl => $state.composableBuilder(
      column: $state.table.attachurl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$DriftItemMasterTableTableManager get driftItemMaster =>
      $$DriftItemMasterTableTableManager(_db, _db.driftItemMaster);
  $$DriftLineMasterTableTableManager get driftLineMaster =>
      $$DriftLineMasterTableTableManager(_db, _db.driftLineMaster);
  $$DriftBinMasterTableTableManager get driftBinMaster =>
      $$DriftBinMasterTableTableManager(_db, _db.driftBinMaster);
  $$CheckListHeaderMasterTableTableManager get checkListHeaderMaster =>
      $$CheckListHeaderMasterTableTableManager(_db, _db.checkListHeaderMaster);
  $$DriftCheckLineMasterTableTableManager get driftCheckLineMaster =>
      $$DriftCheckLineMasterTableTableManager(_db, _db.driftCheckLineMaster);
  $$DriftScanPostMasterTableTableManager get driftScanPostMaster =>
      $$DriftScanPostMasterTableTableManager(_db, _db.driftScanPostMaster);
  $$DriftDispMasterTableTableManager get driftDispMaster =>
      $$DriftDispMasterTableTableManager(_db, _db.driftDispMaster);
}
