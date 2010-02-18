#!/usr/bin/ruby

#
# Distributed under the MIT license
# see the file COPYING for details
# or visit http://www.opensource.org/licenses/mit-license.php
#
# $Id: baseclasses.rb 1295 2007-03-17 13:11:25Z mosu $
#
# Classes for the "Matroska EBML doc type". Generated with
# gen_classes_from_libmatroska.
#
# Written by Moritz Bunkus <moritz@bunkus.org>.
#

# This file is generated automatically by the
# gen_classes_from_libmatroska script and should not be
# modified manually!

require "ebml"

module Matroska
  # From KaxAttached.cpp
  class Attached < Ebml::Master
    def Attached.global_id
      @@id ||= Ebml::Id.new(0x61a7, 2)
      return @@id
    end
  end

  class FileDescription < Ebml::UnicodeString
    def FileDescription.global_id
      @@id ||= Ebml::Id.new(0x467e, 2)
      return @@id
    end
  end

  class FileName < Ebml::UnicodeString
    def FileName.global_id
      @@id ||= Ebml::Id.new(0x466e, 2)
      return @@id
    end
  end

  class MimeType < Ebml::String
    def MimeType.global_id
      @@id ||= Ebml::Id.new(0x4660, 2)
      return @@id
    end
  end

  class FileData < Ebml::Binary
    def FileData.global_id
      @@id ||= Ebml::Id.new(0x465c, 2)
      return @@id
    end
  end

  class FileUID < Ebml::UInteger
    def FileUID.global_id
      @@id ||= Ebml::Id.new(0x46ae, 2)
      return @@id
    end
  end

  class FileReferral < Ebml::Binary
    def FileReferral.global_id
      @@id ||= Ebml::Id.new(0x4675, 2)
      return @@id
    end
  end

  # From KaxAttachments.cpp
  class Attachments < Ebml::Master
    def Attachments.global_id
      @@id ||= Ebml::Id.new(0x1941a469, 4)
      return @@id
    end
  end

  # From KaxBlock.cpp
  class BlockGroup < Ebml::Master
    def BlockGroup.global_id
      @@id ||= Ebml::Id.new(0xa0, 1)
      return @@id
    end
  end

  class Block < Ebml::Binary
    def Block.global_id
      @@id ||= Ebml::Id.new(0xa1, 1)
      return @@id
    end
  end

  class SimpleBlock < Ebml::Binary
    def SimpleBlock.global_id
      @@id ||= Ebml::Id.new(0xa3, 1)
      return @@id
    end
  end

  class BlockDuration < Ebml::UInteger
    def BlockDuration.global_id
      @@id ||= Ebml::Id.new(0x9b, 1)
      return @@id
    end
  end

  class BlockVirtual < Ebml::Binary
    def BlockVirtual.global_id
      @@id ||= Ebml::Id.new(0xa2, 1)
      return @@id
    end
  end

  class CodecState < Ebml::Binary
    def CodecState.global_id
      @@id ||= Ebml::Id.new(0xa4, 1)
      return @@id
    end
  end

  class BlockAdditions < Ebml::Master
    def BlockAdditions.global_id
      @@id ||= Ebml::Id.new(0x75a1, 2)
      return @@id
    end
  end

  class BlockMore < Ebml::Master
    def BlockMore.global_id
      @@id ||= Ebml::Id.new(0xa6, 1)
      return @@id
    end
  end

  class BlockAddID < Ebml::UInteger
    def BlockAddID.global_id
      @@id ||= Ebml::Id.new(0xee, 1)
      return @@id
    end
  end

  class BlockAdditional < Ebml::Binary
    def BlockAdditional.global_id
      @@id ||= Ebml::Id.new(0xa5, 1)
      return @@id
    end
  end

  # From KaxBlockData.cpp
  class ReferencePriority < Ebml::UInteger
    def ReferencePriority.global_id
      @@id ||= Ebml::Id.new(0xfa, 1)
      return @@id
    end
  end

  class ReferenceBlock < Ebml::SInteger
    def ReferenceBlock.global_id
      @@id ||= Ebml::Id.new(0xfb, 1)
      return @@id
    end
  end

  class Slices < Ebml::Master
    def Slices.global_id
      @@id ||= Ebml::Id.new(0x8e, 1)
      return @@id
    end
  end

  class TimeSlice < Ebml::Master
    def TimeSlice.global_id
      @@id ||= Ebml::Id.new(0xe8, 1)
      return @@id
    end
  end

  class SliceLaceNumber < Ebml::UInteger
    def SliceLaceNumber.global_id
      @@id ||= Ebml::Id.new(0xcc, 1)
      return @@id
    end
  end

  class SliceFrameNumber < Ebml::UInteger
    def SliceFrameNumber.global_id
      @@id ||= Ebml::Id.new(0xcd, 1)
      return @@id
    end
  end

  class SliceBlockAddID < Ebml::UInteger
    def SliceBlockAddID.global_id
      @@id ||= Ebml::Id.new(0xcb, 1)
      return @@id
    end
  end

  class SliceDelay < Ebml::UInteger
    def SliceDelay.global_id
      @@id ||= Ebml::Id.new(0xce, 1)
      return @@id
    end
  end

  class SliceDuration < Ebml::UInteger
    def SliceDuration.global_id
      @@id ||= Ebml::Id.new(0xcf, 1)
      return @@id
    end
  end

  class ReferenceVirtual < Ebml::SInteger
    def ReferenceVirtual.global_id
      @@id ||= Ebml::Id.new(0xfd, 1)
      return @@id
    end
  end

  # From KaxChapters.cpp
  class Chapters < Ebml::Master
    def Chapters.global_id
      @@id ||= Ebml::Id.new(0x1043a770, 4)
      return @@id
    end
  end

  class EditionEntry < Ebml::Master
    def EditionEntry.global_id
      @@id ||= Ebml::Id.new(0x45b9, 2)
      return @@id
    end
  end

  class EditionUID < Ebml::UInteger
    def EditionUID.global_id
      @@id ||= Ebml::Id.new(0x45bc, 2)
      return @@id
    end
  end

  class EditionFlagHidden < Ebml::UInteger
    def EditionFlagHidden.global_id
      @@id ||= Ebml::Id.new(0x45bd, 2)
      return @@id
    end
  end

  class EditionFlagDefault < Ebml::UInteger
    def EditionFlagDefault.global_id
      @@id ||= Ebml::Id.new(0x45db, 2)
      return @@id
    end
  end

  class EditionFlagOrdered < Ebml::UInteger
    def EditionFlagOrdered.global_id
      @@id ||= Ebml::Id.new(0x45dd, 2)
      return @@id
    end
  end

  class ChapterAtom < Ebml::Master
    def ChapterAtom.global_id
      @@id ||= Ebml::Id.new(0xb6, 1)
      return @@id
    end
  end

  class ChapterUID < Ebml::UInteger
    def ChapterUID.global_id
      @@id ||= Ebml::Id.new(0x73c4, 2)
      return @@id
    end
  end

  class ChapterTimeStart < Ebml::UInteger
    def ChapterTimeStart.global_id
      @@id ||= Ebml::Id.new(0x91, 1)
      return @@id
    end
  end

  class ChapterTimeEnd < Ebml::UInteger
    def ChapterTimeEnd.global_id
      @@id ||= Ebml::Id.new(0x92, 1)
      return @@id
    end
  end

  class ChapterFlagHidden < Ebml::UInteger
    def ChapterFlagHidden.global_id
      @@id ||= Ebml::Id.new(0x98, 1)
      return @@id
    end
  end

  class ChapterFlagEnabled < Ebml::UInteger
    def ChapterFlagEnabled.global_id
      @@id ||= Ebml::Id.new(0x4598, 2)
      return @@id
    end
  end

  class ChapterSegmentUID < Ebml::Binary
    def ChapterSegmentUID.global_id
      @@id ||= Ebml::Id.new(0x6e67, 2)
      return @@id
    end
  end

  class ChapterSegmentEditionUID < Ebml::Binary
    def ChapterSegmentEditionUID.global_id
      @@id ||= Ebml::Id.new(0x6ebc, 2)
      return @@id
    end
  end

  class ChapterPhysicalEquiv < Ebml::UInteger
    def ChapterPhysicalEquiv.global_id
      @@id ||= Ebml::Id.new(0x63c3, 2)
      return @@id
    end
  end

  class ChapterTrack < Ebml::Master
    def ChapterTrack.global_id
      @@id ||= Ebml::Id.new(0x8f, 1)
      return @@id
    end
  end

  class ChapterTrackNumber < Ebml::UInteger
    def ChapterTrackNumber.global_id
      @@id ||= Ebml::Id.new(0x89, 1)
      return @@id
    end
  end

  class ChapterDisplay < Ebml::Master
    def ChapterDisplay.global_id
      @@id ||= Ebml::Id.new(0x80, 1)
      return @@id
    end
  end

  class ChapterString < Ebml::UnicodeString
    def ChapterString.global_id
      @@id ||= Ebml::Id.new(0x85, 1)
      return @@id
    end
  end

  class ChapterLanguage < Ebml::String
    def ChapterLanguage.global_id
      @@id ||= Ebml::Id.new(0x437c, 2)
      return @@id
    end
  end

  class ChapterCountry < Ebml::String
    def ChapterCountry.global_id
      @@id ||= Ebml::Id.new(0x437e, 2)
      return @@id
    end
  end

  class ChapterProcess < Ebml::Master
    def ChapterProcess.global_id
      @@id ||= Ebml::Id.new(0x6944, 2)
      return @@id
    end
  end

  class ChapterProcessCodecID < Ebml::UInteger
    def ChapterProcessCodecID.global_id
      @@id ||= Ebml::Id.new(0x6955, 2)
      return @@id
    end
  end

  class ChapterProcessPrivate < Ebml::Binary
    def ChapterProcessPrivate.global_id
      @@id ||= Ebml::Id.new(0x450d, 2)
      return @@id
    end
  end

  class ChapterProcessCommand < Ebml::Master
    def ChapterProcessCommand.global_id
      @@id ||= Ebml::Id.new(0x6911, 2)
      return @@id
    end
  end

  class ChapterProcessTime < Ebml::UInteger
    def ChapterProcessTime.global_id
      @@id ||= Ebml::Id.new(0x6922, 2)
      return @@id
    end
  end

  class ChapterProcessData < Ebml::Binary
    def ChapterProcessData.global_id
      @@id ||= Ebml::Id.new(0x6933, 2)
      return @@id
    end
  end

  # From KaxCluster.cpp
  class Cluster < Ebml::Master
    def Cluster.global_id
      @@id ||= Ebml::Id.new(0x1f43b675, 4)
      return @@id
    end
  end

  # From KaxClusterData.cpp
  class ClusterTimecode < Ebml::UInteger
    def ClusterTimecode.global_id
      @@id ||= Ebml::Id.new(0xe7, 1)
      return @@id
    end
  end

  class ClusterSilentTracks < Ebml::Master
    def ClusterSilentTracks.global_id
      @@id ||= Ebml::Id.new(0x5854, 2)
      return @@id
    end
  end

  class ClusterSilentTrackNumber < Ebml::UInteger
    def ClusterSilentTrackNumber.global_id
      @@id ||= Ebml::Id.new(0x58d7, 2)
      return @@id
    end
  end

  class ClusterPrevSize < Ebml::UInteger
    def ClusterPrevSize.global_id
      @@id ||= Ebml::Id.new(0xab, 1)
      return @@id
    end
  end

  class ClusterPosition < Ebml::UInteger
    def ClusterPosition.global_id
      @@id ||= Ebml::Id.new(0xa7, 1)
      return @@id
    end
  end

  # From KaxContentEncoding.cpp
  class ContentEncodings < Ebml::Master
    def ContentEncodings.global_id
      @@id ||= Ebml::Id.new(0x6d80, 2)
      return @@id
    end
  end

  class ContentEncoding < Ebml::Master
    def ContentEncoding.global_id
      @@id ||= Ebml::Id.new(0x6240, 2)
      return @@id
    end
  end

  class ContentEncodingOrder < Ebml::UInteger
    def ContentEncodingOrder.global_id
      @@id ||= Ebml::Id.new(0x5031, 2)
      return @@id
    end
  end

  class ContentEncodingScope < Ebml::UInteger
    def ContentEncodingScope.global_id
      @@id ||= Ebml::Id.new(0x5032, 2)
      return @@id
    end
  end

  class ContentEncodingType < Ebml::UInteger
    def ContentEncodingType.global_id
      @@id ||= Ebml::Id.new(0x5033, 2)
      return @@id
    end
  end

  class ContentCompression < Ebml::Master
    def ContentCompression.global_id
      @@id ||= Ebml::Id.new(0x5034, 2)
      return @@id
    end
  end

  class ContentCompAlgo < Ebml::UInteger
    def ContentCompAlgo.global_id
      @@id ||= Ebml::Id.new(0x4254, 2)
      return @@id
    end
  end

  class ContentCompSettings < Ebml::Binary
    def ContentCompSettings.global_id
      @@id ||= Ebml::Id.new(0x4255, 2)
      return @@id
    end
  end

  class ContentEncryption < Ebml::Master
    def ContentEncryption.global_id
      @@id ||= Ebml::Id.new(0x5035, 2)
      return @@id
    end
  end

  class ContentEncAlgo < Ebml::UInteger
    def ContentEncAlgo.global_id
      @@id ||= Ebml::Id.new(0x47e1, 2)
      return @@id
    end
  end

  class ContentEncKeyID < Ebml::Binary
    def ContentEncKeyID.global_id
      @@id ||= Ebml::Id.new(0x47e2, 2)
      return @@id
    end
  end

  class ContentSignature < Ebml::Binary
    def ContentSignature.global_id
      @@id ||= Ebml::Id.new(0x47e3, 2)
      return @@id
    end
  end

  class ContentSigKeyID < Ebml::Binary
    def ContentSigKeyID.global_id
      @@id ||= Ebml::Id.new(0x47e4, 2)
      return @@id
    end
  end

  class ContentSigAlgo < Ebml::UInteger
    def ContentSigAlgo.global_id
      @@id ||= Ebml::Id.new(0x47e5, 2)
      return @@id
    end
  end

  class ContentSigHashAlgo < Ebml::UInteger
    def ContentSigHashAlgo.global_id
      @@id ||= Ebml::Id.new(0x47e6, 2)
      return @@id
    end
  end

  # From KaxCues.cpp
  class Cues < Ebml::Master
    def Cues.global_id
      @@id ||= Ebml::Id.new(0x1c53bb6b, 4)
      return @@id
    end
  end

  # From KaxCuesData.cpp
  class CuePoint < Ebml::Master
    def CuePoint.global_id
      @@id ||= Ebml::Id.new(0xbb, 1)
      return @@id
    end
  end

  class CueTime < Ebml::UInteger
    def CueTime.global_id
      @@id ||= Ebml::Id.new(0xb3, 1)
      return @@id
    end
  end

  class CueTrackPositions < Ebml::Master
    def CueTrackPositions.global_id
      @@id ||= Ebml::Id.new(0xb7, 1)
      return @@id
    end
  end

  class CueTrack < Ebml::UInteger
    def CueTrack.global_id
      @@id ||= Ebml::Id.new(0xf7, 1)
      return @@id
    end
  end

  class CueClusterPosition < Ebml::UInteger
    def CueClusterPosition.global_id
      @@id ||= Ebml::Id.new(0xf1, 1)
      return @@id
    end
  end

  class CueBlockNumber < Ebml::UInteger
    def CueBlockNumber.global_id
      @@id ||= Ebml::Id.new(0x5378, 2)
      return @@id
    end
  end

  class CueCodecState < Ebml::UInteger
    def CueCodecState.global_id
      @@id ||= Ebml::Id.new(0xea, 1)
      return @@id
    end
  end

  class CueReference < Ebml::Master
    def CueReference.global_id
      @@id ||= Ebml::Id.new(0xdb, 1)
      return @@id
    end
  end

  class CueRefTime < Ebml::UInteger
    def CueRefTime.global_id
      @@id ||= Ebml::Id.new(0x96, 1)
      return @@id
    end
  end

  class CueRefCluster < Ebml::UInteger
    def CueRefCluster.global_id
      @@id ||= Ebml::Id.new(0x97, 1)
      return @@id
    end
  end

  class CueRefNumber < Ebml::UInteger
    def CueRefNumber.global_id
      @@id ||= Ebml::Id.new(0x535f, 2)
      return @@id
    end
  end

  class CueRefCodecState < Ebml::UInteger
    def CueRefCodecState.global_id
      @@id ||= Ebml::Id.new(0xeb, 1)
      return @@id
    end
  end

  # From KaxInfo.cpp
  class Info < Ebml::Master
    def Info.global_id
      @@id ||= Ebml::Id.new(0x1549a966, 4)
      return @@id
    end
  end

  class MuxingApp < Ebml::UnicodeString
    def MuxingApp.global_id
      @@id ||= Ebml::Id.new(0x4d80, 2)
      return @@id
    end
  end

  class WritingApp < Ebml::UnicodeString
    def WritingApp.global_id
      @@id ||= Ebml::Id.new(0x5741, 2)
      return @@id
    end
  end

  # From KaxInfoData.cpp
  class SegmentUID < Ebml::Binary
    def SegmentUID.global_id
      @@id ||= Ebml::Id.new(0x73a4, 2)
      return @@id
    end
  end

  class SegmentFilename < Ebml::UnicodeString
    def SegmentFilename.global_id
      @@id ||= Ebml::Id.new(0x7384, 2)
      return @@id
    end
  end

  class PrevUID < Ebml::Binary
    def PrevUID.global_id
      @@id ||= Ebml::Id.new(0x3cb923, 3)
      return @@id
    end
  end

  class PrevFilename < Ebml::UnicodeString
    def PrevFilename.global_id
      @@id ||= Ebml::Id.new(0x3c83ab, 3)
      return @@id
    end
  end

  class NextUID < Ebml::Binary
    def NextUID.global_id
      @@id ||= Ebml::Id.new(0x3eb923, 3)
      return @@id
    end
  end

  class NextFilename < Ebml::UnicodeString
    def NextFilename.global_id
      @@id ||= Ebml::Id.new(0x3e83bb, 3)
      return @@id
    end
  end

  class SegmentFamily < Ebml::Binary
    def SegmentFamily.global_id
      @@id ||= Ebml::Id.new(0x4444, 2)
      return @@id
    end
  end

  class ChapterTranslate < Ebml::Master
    def ChapterTranslate.global_id
      @@id ||= Ebml::Id.new(0x6924, 2)
      return @@id
    end
  end

  class ChapterTranslateEditionUID < Ebml::UInteger
    def ChapterTranslateEditionUID.global_id
      @@id ||= Ebml::Id.new(0x69fc, 2)
      return @@id
    end
  end

  class ChapterTranslateCodec < Ebml::UInteger
    def ChapterTranslateCodec.global_id
      @@id ||= Ebml::Id.new(0x69bf, 2)
      return @@id
    end
  end

  class ChapterTranslateID < Ebml::Binary
    def ChapterTranslateID.global_id
      @@id ||= Ebml::Id.new(0x69a5, 2)
      return @@id
    end
  end

  class TimecodeScale < Ebml::UInteger
    def TimecodeScale.global_id
      @@id ||= Ebml::Id.new(0x2ad7b1, 3)
      return @@id
    end
  end

  class Duration < Ebml::Float
    def Duration.global_id
      @@id ||= Ebml::Id.new(0x4489, 2)
      return @@id
    end
  end

  class DateUTC < Ebml::Date
    def DateUTC.global_id
      @@id ||= Ebml::Id.new(0x4461, 2)
      return @@id
    end
  end

  class Title < Ebml::UnicodeString
    def Title.global_id
      @@id ||= Ebml::Id.new(0x7ba9, 2)
      return @@id
    end
  end

  # From KaxSeekHead.cpp
  class SeekHead < Ebml::Master
    def SeekHead.global_id
      @@id ||= Ebml::Id.new(0x114d9b74, 4)
      return @@id
    end
  end

  class Seek < Ebml::Master
    def Seek.global_id
      @@id ||= Ebml::Id.new(0x4dbb, 2)
      return @@id
    end
  end

  class SeekID < Ebml::Binary
    def SeekID.global_id
      @@id ||= Ebml::Id.new(0x53ab, 2)
      return @@id
    end
  end

  class SeekPosition < Ebml::UInteger
    def SeekPosition.global_id
      @@id ||= Ebml::Id.new(0x53ac, 2)
      return @@id
    end
  end

  # From KaxSegment.cpp
  class Segment < Ebml::Master
    def Segment.global_id
      @@id ||= Ebml::Id.new(0x18538067, 4)
      return @@id
    end
  end

  # From KaxTag.cpp
  class Tag < Ebml::Master
    def Tag.global_id
      @@id ||= Ebml::Id.new(0x7373, 2)
      return @@id
    end
  end

  class TagTargets < Ebml::Master
    def TagTargets.global_id
      @@id ||= Ebml::Id.new(0x63c0, 2)
      return @@id
    end
  end

  class TagGeneral < Ebml::Master
    def TagGeneral.global_id
      @@id ||= Ebml::Id.new(0x67c9, 2)
      return @@id
    end
  end

  class TagGenres < Ebml::Master
    def TagGenres.global_id
      @@id ||= Ebml::Id.new(0x6583, 2)
      return @@id
    end
  end

  class TagAudioSpecific < Ebml::Master
    def TagAudioSpecific.global_id
      @@id ||= Ebml::Id.new(0x41c5, 2)
      return @@id
    end
  end

  class TagImageSpecific < Ebml::Master
    def TagImageSpecific.global_id
      @@id ||= Ebml::Id.new(0x4990, 2)
      return @@id
    end
  end

  class TagBibliography < Ebml::UnicodeString
    def TagBibliography.global_id
      @@id ||= Ebml::Id.new(0x4488, 2)
      return @@id
    end
  end

  class TagEncoder < Ebml::UnicodeString
    def TagEncoder.global_id
      @@id ||= Ebml::Id.new(0x4431, 2)
      return @@id
    end
  end

  class TagEncodeSettings < Ebml::UnicodeString
    def TagEncodeSettings.global_id
      @@id ||= Ebml::Id.new(0x6526, 2)
      return @@id
    end
  end

  class TagLanguage < Ebml::String
    def TagLanguage.global_id
      @@id ||= Ebml::Id.new(0x22b59f, 3)
      return @@id
    end
  end

  class TagLength < Ebml::UInteger
    def TagLength.global_id
      @@id ||= Ebml::Id.new(0x5243, 2)
      return @@id
    end
  end

  class TagPlaylistDelay < Ebml::UInteger
    def TagPlaylistDelay.global_id
      @@id ||= Ebml::Id.new(0x72cc, 2)
      return @@id
    end
  end

  class TagRating < Ebml::Binary
    def TagRating.global_id
      @@id ||= Ebml::Id.new(0x52bc, 2)
      return @@id
    end
  end

  class TagSubject < Ebml::UnicodeString
    def TagSubject.global_id
      @@id ||= Ebml::Id.new(0x49c1, 2)
      return @@id
    end
  end

  class TagUnsynchronisedText < Ebml::UnicodeString
    def TagUnsynchronisedText.global_id
      @@id ||= Ebml::Id.new(0x874b, 2)
      return @@id
    end
  end

  class TagUserDefinedURL < Ebml::String
    def TagUserDefinedURL.global_id
      @@id ||= Ebml::Id.new(0x434a, 2)
      return @@id
    end
  end

  class TagTargetTypeValue < Ebml::UInteger
    def TagTargetTypeValue.global_id
      @@id ||= Ebml::Id.new(0x68ca, 2)
      return @@id
    end
  end

  class TagTargetType < Ebml::String
    def TagTargetType.global_id
      @@id ||= Ebml::Id.new(0x63ca, 2)
      return @@id
    end
  end

  class TagTrackUID < Ebml::UInteger
    def TagTrackUID.global_id
      @@id ||= Ebml::Id.new(0x63c5, 2)
      return @@id
    end
  end

  class TagEditionUID < Ebml::UInteger
    def TagEditionUID.global_id
      @@id ||= Ebml::Id.new(0x63c9, 2)
      return @@id
    end
  end

  class TagChapterUID < Ebml::UInteger
    def TagChapterUID.global_id
      @@id ||= Ebml::Id.new(0x63c4, 2)
      return @@id
    end
  end

  class TagAttachmentUID < Ebml::UInteger
    def TagAttachmentUID.global_id
      @@id ||= Ebml::Id.new(0x63c6, 2)
      return @@id
    end
  end

  class TagAudioGenre < Ebml::String
    def TagAudioGenre.global_id
      @@id ||= Ebml::Id.new(0x65c2, 2)
      return @@id
    end
  end

  class TagVideoGenre < Ebml::Binary
    def TagVideoGenre.global_id
      @@id ||= Ebml::Id.new(0x65a1, 2)
      return @@id
    end
  end

  class TagSubGenre < Ebml::String
    def TagSubGenre.global_id
      @@id ||= Ebml::Id.new(0x65ac, 2)
      return @@id
    end
  end

  class TagAudioEncryption < Ebml::Binary
    def TagAudioEncryption.global_id
      @@id ||= Ebml::Id.new(0x41b4, 2)
      return @@id
    end
  end

  class TagAudioGain < Ebml::Float
    def TagAudioGain.global_id
      @@id ||= Ebml::Id.new(0x4199, 2)
      return @@id
    end
  end

  class TagAudioPeak < Ebml::Float
    def TagAudioPeak.global_id
      @@id ||= Ebml::Id.new(0x4189, 2)
      return @@id
    end
  end

  class TagBPM < Ebml::Float
    def TagBPM.global_id
      @@id ||= Ebml::Id.new(0x41a1, 2)
      return @@id
    end
  end

  class TagDiscTrack < Ebml::UInteger
    def TagDiscTrack.global_id
      @@id ||= Ebml::Id.new(0x41b6, 2)
      return @@id
    end
  end

  class TagSetPart < Ebml::UInteger
    def TagSetPart.global_id
      @@id ||= Ebml::Id.new(0x416e, 2)
      return @@id
    end
  end

  class TagEqualisation < Ebml::Binary
    def TagEqualisation.global_id
      @@id ||= Ebml::Id.new(0x41b1, 2)
      return @@id
    end
  end

  class TagInitialKey < Ebml::String
    def TagInitialKey.global_id
      @@id ||= Ebml::Id.new(0x413a, 2)
      return @@id
    end
  end

  class TagOfficialAudioFileURL < Ebml::String
    def TagOfficialAudioFileURL.global_id
      @@id ||= Ebml::Id.new(0x4133, 2)
      return @@id
    end
  end

  class TagOfficialAudioSourceURL < Ebml::String
    def TagOfficialAudioSourceURL.global_id
      @@id ||= Ebml::Id.new(0x413e, 2)
      return @@id
    end
  end

  class TagArchivalLocation < Ebml::UnicodeString
    def TagArchivalLocation.global_id
      @@id ||= Ebml::Id.new(0x45a4, 2)
      return @@id
    end
  end

  class TagFile < Ebml::UnicodeString
    def TagFile.global_id
      @@id ||= Ebml::Id.new(0x454e, 2)
      return @@id
    end
  end

  class TagKeywords < Ebml::UnicodeString
    def TagKeywords.global_id
      @@id ||= Ebml::Id.new(0x458c, 2)
      return @@id
    end
  end

  class TagMood < Ebml::UnicodeString
    def TagMood.global_id
      @@id ||= Ebml::Id.new(0x45ae, 2)
      return @@id
    end
  end

  class TagRecordLocation < Ebml::String
    def TagRecordLocation.global_id
      @@id ||= Ebml::Id.new(0x457e, 2)
      return @@id
    end
  end

  class TagSource < Ebml::UnicodeString
    def TagSource.global_id
      @@id ||= Ebml::Id.new(0x458a, 2)
      return @@id
    end
  end

  class TagSourceForm < Ebml::UnicodeString
    def TagSourceForm.global_id
      @@id ||= Ebml::Id.new(0x45b5, 2)
      return @@id
    end
  end

  class TagProduct < Ebml::UnicodeString
    def TagProduct.global_id
      @@id ||= Ebml::Id.new(0x45e3, 2)
      return @@id
    end
  end

  class TagOriginalMediaType < Ebml::UnicodeString
    def TagOriginalMediaType.global_id
      @@id ||= Ebml::Id.new(0x45a7, 2)
      return @@id
    end
  end

  class TagPlayCounter < Ebml::UInteger
    def TagPlayCounter.global_id
      @@id ||= Ebml::Id.new(0x4566, 2)
      return @@id
    end
  end

  class TagPopularimeter < Ebml::SInteger
    def TagPopularimeter.global_id
      @@id ||= Ebml::Id.new(0x4532, 2)
      return @@id
    end
  end

  class TagCaptureDPI < Ebml::UInteger
    def TagCaptureDPI.global_id
      @@id ||= Ebml::Id.new(0x49c7, 2)
      return @@id
    end
  end

  class TagCaptureLightness < Ebml::Binary
    def TagCaptureLightness.global_id
      @@id ||= Ebml::Id.new(0x49e1, 2)
      return @@id
    end
  end

  class TagCapturePaletteSetting < Ebml::UInteger
    def TagCapturePaletteSetting.global_id
      @@id ||= Ebml::Id.new(0x4934, 2)
      return @@id
    end
  end

  class TagCaptureSharpness < Ebml::Binary
    def TagCaptureSharpness.global_id
      @@id ||= Ebml::Id.new(0x4922, 2)
      return @@id
    end
  end

  class TagCropped < Ebml::UnicodeString
    def TagCropped.global_id
      @@id ||= Ebml::Id.new(0x4987, 2)
      return @@id
    end
  end

  class TagOriginalDimensions < Ebml::String
    def TagOriginalDimensions.global_id
      @@id ||= Ebml::Id.new(0x4933, 2)
      return @@id
    end
  end

  class TagSimple < Ebml::Master
    def TagSimple.global_id
      @@id ||= Ebml::Id.new(0x67c8, 2)
      return @@id
    end
  end

  class TagName < Ebml::UnicodeString
    def TagName.global_id
      @@id ||= Ebml::Id.new(0x45a3, 2)
      return @@id
    end
  end

  class TagLangue < Ebml::String
    def TagLangue.global_id
      @@id ||= Ebml::Id.new(0x447a, 2)
      return @@id
    end
  end

  class TagDefault < Ebml::UInteger
    def TagDefault.global_id
      @@id ||= Ebml::Id.new(0x44b4, 2)
      return @@id
    end
  end

  class TagString < Ebml::UnicodeString
    def TagString.global_id
      @@id ||= Ebml::Id.new(0x4487, 2)
      return @@id
    end
  end

  class TagBinary < Ebml::Binary
    def TagBinary.global_id
      @@id ||= Ebml::Id.new(0x4485, 2)
      return @@id
    end
  end

  # From KaxTagMulti.cpp
  class TagMultiComment < Ebml::Master
    def TagMultiComment.global_id
      @@id ||= Ebml::Id.new(0x5b7b, 2)
      return @@id
    end
  end

  class TagMultiCommentName < Ebml::String
    def TagMultiCommentName.global_id
      @@id ||= Ebml::Id.new(0x5f7d, 2)
      return @@id
    end
  end

  class TagMultiCommentComments < Ebml::UnicodeString
    def TagMultiCommentComments.global_id
      @@id ||= Ebml::Id.new(0x5f7c, 2)
      return @@id
    end
  end

  class TagMultiCommentLanguage < Ebml::String
    def TagMultiCommentLanguage.global_id
      @@id ||= Ebml::Id.new(0x22b59d, 3)
      return @@id
    end
  end

  class TagMultiCommercial < Ebml::Master
    def TagMultiCommercial.global_id
      @@id ||= Ebml::Id.new(0x4dc7, 2)
      return @@id
    end
  end

  class TagCommercial < Ebml::Master
    def TagCommercial.global_id
      @@id ||= Ebml::Id.new(0x4ec7, 2)
      return @@id
    end
  end

  class TagMultiCommercialType < Ebml::UInteger
    def TagMultiCommercialType.global_id
      @@id ||= Ebml::Id.new(0x5bd7, 2)
      return @@id
    end
  end

  class TagMultiCommercialAddress < Ebml::UnicodeString
    def TagMultiCommercialAddress.global_id
      @@id ||= Ebml::Id.new(0x5bbb, 2)
      return @@id
    end
  end

  class TagMultiCommercialURL < Ebml::String
    def TagMultiCommercialURL.global_id
      @@id ||= Ebml::Id.new(0x5bda, 2)
      return @@id
    end
  end

  class TagMultiCommercialEmail < Ebml::String
    def TagMultiCommercialEmail.global_id
      @@id ||= Ebml::Id.new(0x5bc0, 2)
      return @@id
    end
  end

  class TagMultiPrice < Ebml::Master
    def TagMultiPrice.global_id
      @@id ||= Ebml::Id.new(0x5bc3, 2)
      return @@id
    end
  end

  class TagMultiPriceCurrency < Ebml::String
    def TagMultiPriceCurrency.global_id
      @@id ||= Ebml::Id.new(0x5b6c, 2)
      return @@id
    end
  end

  class TagMultiPriceAmount < Ebml::Float
    def TagMultiPriceAmount.global_id
      @@id ||= Ebml::Id.new(0x5b6e, 2)
      return @@id
    end
  end

  class TagMultiPricePriceDate < Ebml::Date
    def TagMultiPricePriceDate.global_id
      @@id ||= Ebml::Id.new(0x5b6f, 2)
      return @@id
    end
  end

  class TagMultiDate < Ebml::Master
    def TagMultiDate.global_id
      @@id ||= Ebml::Id.new(0x4dc8, 2)
      return @@id
    end
  end

  class TagDate < Ebml::Master
    def TagDate.global_id
      @@id ||= Ebml::Id.new(0x4ec8, 2)
      return @@id
    end
  end

  class TagMultiDateType < Ebml::UInteger
    def TagMultiDateType.global_id
      @@id ||= Ebml::Id.new(0x5bd8, 2)
      return @@id
    end
  end

  class TagMultiDateDateBegin < Ebml::Date
    def TagMultiDateDateBegin.global_id
      @@id ||= Ebml::Id.new(0x4460, 2)
      return @@id
    end
  end

  class TagMultiDateDateEnd < Ebml::Date
    def TagMultiDateDateEnd.global_id
      @@id ||= Ebml::Id.new(0x4462, 2)
      return @@id
    end
  end

  class TagMultiEntity < Ebml::Master
    def TagMultiEntity.global_id
      @@id ||= Ebml::Id.new(0x4dc9, 2)
      return @@id
    end
  end

  class TagEntity < Ebml::Master
    def TagEntity.global_id
      @@id ||= Ebml::Id.new(0x4ec9, 2)
      return @@id
    end
  end

  class TagMultiEntityType < Ebml::UInteger
    def TagMultiEntityType.global_id
      @@id ||= Ebml::Id.new(0x5bd9, 2)
      return @@id
    end
  end

  class TagMultiEntityName < Ebml::UnicodeString
    def TagMultiEntityName.global_id
      @@id ||= Ebml::Id.new(0x5bed, 2)
      return @@id
    end
  end

  class TagMultiEntityAddress < Ebml::UnicodeString
    def TagMultiEntityAddress.global_id
      @@id ||= Ebml::Id.new(0x5bdc, 2)
      return @@id
    end
  end

  class TagMultiEntityURL < Ebml::String
    def TagMultiEntityURL.global_id
      @@id ||= Ebml::Id.new(0x5bdb, 2)
      return @@id
    end
  end

  class TagMultiEntityEmail < Ebml::String
    def TagMultiEntityEmail.global_id
      @@id ||= Ebml::Id.new(0x5bc1, 2)
      return @@id
    end
  end

  class TagMultiIdentifier < Ebml::Master
    def TagMultiIdentifier.global_id
      @@id ||= Ebml::Id.new(0x4dc6, 2)
      return @@id
    end
  end

  class TagIdentifier < Ebml::Master
    def TagIdentifier.global_id
      @@id ||= Ebml::Id.new(0x4ec6, 2)
      return @@id
    end
  end

  class TagMultiIdentifierType < Ebml::UInteger
    def TagMultiIdentifierType.global_id
      @@id ||= Ebml::Id.new(0x5bad, 2)
      return @@id
    end
  end

  class TagMultiIdentifierBinary < Ebml::Binary
    def TagMultiIdentifierBinary.global_id
      @@id ||= Ebml::Id.new(0x6b67, 2)
      return @@id
    end
  end

  class TagMultiIdentifierString < Ebml::UnicodeString
    def TagMultiIdentifierString.global_id
      @@id ||= Ebml::Id.new(0x6b68, 2)
      return @@id
    end
  end

  class TagMultiLegal < Ebml::Master
    def TagMultiLegal.global_id
      @@id ||= Ebml::Id.new(0x4dc5, 2)
      return @@id
    end
  end

  class TagLegal < Ebml::Master
    def TagLegal.global_id
      @@id ||= Ebml::Id.new(0x4ec5, 2)
      return @@id
    end
  end

  class TagMultiLegalType < Ebml::UInteger
    def TagMultiLegalType.global_id
      @@id ||= Ebml::Id.new(0x5bbd, 2)
      return @@id
    end
  end

  class TagMultiLegalContent < Ebml::UnicodeString
    def TagMultiLegalContent.global_id
      @@id ||= Ebml::Id.new(0x5bb2, 2)
      return @@id
    end
  end

  class TagMultiLegalURL < Ebml::String
    def TagMultiLegalURL.global_id
      @@id ||= Ebml::Id.new(0x5b34, 2)
      return @@id
    end
  end

  class TagMultiLegalAddress < Ebml::UnicodeString
    def TagMultiLegalAddress.global_id
      @@id ||= Ebml::Id.new(0x5b9b, 2)
      return @@id
    end
  end

  class TagMultiTitle < Ebml::Master
    def TagMultiTitle.global_id
      @@id ||= Ebml::Id.new(0x4dc4, 2)
      return @@id
    end
  end

  class TagTitle < Ebml::Master
    def TagTitle.global_id
      @@id ||= Ebml::Id.new(0x4ec4, 2)
      return @@id
    end
  end

  class TagMultiTitleType < Ebml::UInteger
    def TagMultiTitleType.global_id
      @@id ||= Ebml::Id.new(0x5b7d, 2)
      return @@id
    end
  end

  class TagMultiTitleName < Ebml::UnicodeString
    def TagMultiTitleName.global_id
      @@id ||= Ebml::Id.new(0x5bb9, 2)
      return @@id
    end
  end

  class TagMultiTitleSubTitle < Ebml::UnicodeString
    def TagMultiTitleSubTitle.global_id
      @@id ||= Ebml::Id.new(0x5b5b, 2)
      return @@id
    end
  end

  class TagMultiTitleEdition < Ebml::UnicodeString
    def TagMultiTitleEdition.global_id
      @@id ||= Ebml::Id.new(0x5bae, 2)
      return @@id
    end
  end

  class TagMultiTitleAddress < Ebml::UnicodeString
    def TagMultiTitleAddress.global_id
      @@id ||= Ebml::Id.new(0x5b33, 2)
      return @@id
    end
  end

  class TagMultiTitleURL < Ebml::String
    def TagMultiTitleURL.global_id
      @@id ||= Ebml::Id.new(0x5ba9, 2)
      return @@id
    end
  end

  class TagMultiTitleEmail < Ebml::String
    def TagMultiTitleEmail.global_id
      @@id ||= Ebml::Id.new(0x5bc9, 2)
      return @@id
    end
  end

  class TagMultiTitleLanguage < Ebml::String
    def TagMultiTitleLanguage.global_id
      @@id ||= Ebml::Id.new(0x22b59e, 3)
      return @@id
    end
  end

  class TagMultiAttachment < Ebml::Master
    def TagMultiAttachment.global_id
      @@id ||= Ebml::Id.new(0x4dc3, 2)
      return @@id
    end
  end

  class TagAttachment < Ebml::Master
    def TagAttachment.global_id
      @@id ||= Ebml::Id.new(0x4ec3, 2)
      return @@id
    end
  end

  class TagAttachmentID < Ebml::UInteger
    def TagAttachmentID.global_id
      @@id ||= Ebml::Id.new(0x5ba0, 2)
      return @@id
    end
  end

  # From KaxTags.cpp
  class Tags < Ebml::Master
    def Tags.global_id
      @@id ||= Ebml::Id.new(0x1254c367, 4)
      return @@id
    end
  end

  # From KaxTrackAudio.cpp
  class TrackAudio < Ebml::Master
    def TrackAudio.global_id
      @@id ||= Ebml::Id.new(0xe1, 1)
      return @@id
    end
  end

  class AudioSamplingFreq < Ebml::Float
    def AudioSamplingFreq.global_id
      @@id ||= Ebml::Id.new(0xb5, 1)
      return @@id
    end
  end

  class AudioOutputSamplingFreq < Ebml::Float
    def AudioOutputSamplingFreq.global_id
      @@id ||= Ebml::Id.new(0x78b5, 2)
      return @@id
    end
  end

  class AudioChannels < Ebml::UInteger
    def AudioChannels.global_id
      @@id ||= Ebml::Id.new(0x9f, 1)
      return @@id
    end
  end

  class AudioBitDepth < Ebml::UInteger
    def AudioBitDepth.global_id
      @@id ||= Ebml::Id.new(0x6264, 2)
      return @@id
    end
  end

  class AudioPosition < Ebml::Binary
    def AudioPosition.global_id
      @@id ||= Ebml::Id.new(0x7d7b, 2)
      return @@id
    end
  end

  # From KaxTrackEntryData.cpp
  class TrackNumber < Ebml::UInteger
    def TrackNumber.global_id
      @@id ||= Ebml::Id.new(0xd7, 1)
      return @@id
    end
  end

  class TrackUID < Ebml::UInteger
    def TrackUID.global_id
      @@id ||= Ebml::Id.new(0x73c5, 2)
      return @@id
    end
  end

  class TrackType < Ebml::UInteger
    def TrackType.global_id
      @@id ||= Ebml::Id.new(0x83, 1)
      return @@id
    end
  end

  class TrackFlagDefault < Ebml::UInteger
    def TrackFlagDefault.global_id
      @@id ||= Ebml::Id.new(0x88, 1)
      return @@id
    end
  end

  class TrackFlagForced < Ebml::UInteger
    def TrackFlagForced.global_id
      @@id ||= Ebml::Id.new(0x55aa, 2)
      return @@id
    end
  end

  class TrackFlagLacing < Ebml::UInteger
    def TrackFlagLacing.global_id
      @@id ||= Ebml::Id.new(0x9c, 1)
      return @@id
    end
  end

  class TrackMinCache < Ebml::UInteger
    def TrackMinCache.global_id
      @@id ||= Ebml::Id.new(0x6de7, 2)
      return @@id
    end
  end

  class TrackMaxCache < Ebml::UInteger
    def TrackMaxCache.global_id
      @@id ||= Ebml::Id.new(0x6df8, 2)
      return @@id
    end
  end

  class TrackDefaultDuration < Ebml::UInteger
    def TrackDefaultDuration.global_id
      @@id ||= Ebml::Id.new(0x23e383, 3)
      return @@id
    end
  end

  class TrackTimecodeScale < Ebml::Float
    def TrackTimecodeScale.global_id
      @@id ||= Ebml::Id.new(0x23314f, 3)
      return @@id
    end
  end

  class MaxBlockAdditionID < Ebml::UInteger
    def MaxBlockAdditionID.global_id
      @@id ||= Ebml::Id.new(0x55ee, 2)
      return @@id
    end
  end

  class TrackName < Ebml::UnicodeString
    def TrackName.global_id
      @@id ||= Ebml::Id.new(0x536e, 2)
      return @@id
    end
  end

  class TrackLanguage < Ebml::String
    def TrackLanguage.global_id
      @@id ||= Ebml::Id.new(0x22b59c, 3)
      return @@id
    end
  end

  class CodecID < Ebml::String
    def CodecID.global_id
      @@id ||= Ebml::Id.new(0x86, 1)
      return @@id
    end
  end

  class CodecPrivate < Ebml::Binary
    def CodecPrivate.global_id
      @@id ||= Ebml::Id.new(0x63a2, 2)
      return @@id
    end
  end

  class CodecName < Ebml::UnicodeString
    def CodecName.global_id
      @@id ||= Ebml::Id.new(0x258688, 3)
      return @@id
    end
  end

  class TrackAttachmentLink < Ebml::Binary
    def TrackAttachmentLink.global_id
      @@id ||= Ebml::Id.new(0x7446, 2)
      return @@id
    end
  end

  class TrackOverlay < Ebml::UInteger
    def TrackOverlay.global_id
      @@id ||= Ebml::Id.new(0x6fab, 2)
      return @@id
    end
  end

  class TrackTranslate < Ebml::Master
    def TrackTranslate.global_id
      @@id ||= Ebml::Id.new(0x6624, 2)
      return @@id
    end
  end

  class TrackTranslateEditionUID < Ebml::UInteger
    def TrackTranslateEditionUID.global_id
      @@id ||= Ebml::Id.new(0x66fc, 2)
      return @@id
    end
  end

  class TrackTranslateCodec < Ebml::UInteger
    def TrackTranslateCodec.global_id
      @@id ||= Ebml::Id.new(0x66bf, 2)
      return @@id
    end
  end

  class TrackTranslateTrackID < Ebml::Binary
    def TrackTranslateTrackID.global_id
      @@id ||= Ebml::Id.new(0x66a5, 2)
      return @@id
    end
  end

  class TrackFlagEnabled < Ebml::UInteger
    def TrackFlagEnabled.global_id
      @@id ||= Ebml::Id.new(0xb9, 1)
      return @@id
    end
  end

  class CodecSettings < Ebml::UnicodeString
    def CodecSettings.global_id
      @@id ||= Ebml::Id.new(0x3a9697, 3)
      return @@id
    end
  end

  class CodecInfoURL < Ebml::String
    def CodecInfoURL.global_id
      @@id ||= Ebml::Id.new(0x3b4040, 3)
      return @@id
    end
  end

  class CodecDownloadURL < Ebml::String
    def CodecDownloadURL.global_id
      @@id ||= Ebml::Id.new(0x26b240, 3)
      return @@id
    end
  end

  class CodecDecodeAll < Ebml::UInteger
    def CodecDecodeAll.global_id
      @@id ||= Ebml::Id.new(0xaa, 1)
      return @@id
    end
  end

  # From KaxTracks.cpp
  class Tracks < Ebml::Master
    def Tracks.global_id
      @@id ||= Ebml::Id.new(0x1654ae6b, 4)
      return @@id
    end
  end

  class TrackEntry < Ebml::Master
    def TrackEntry.global_id
      @@id ||= Ebml::Id.new(0xae, 1)
      return @@id
    end
  end

  # From KaxTrackVideo.cpp
  class TrackVideo < Ebml::Master
    def TrackVideo.global_id
      @@id ||= Ebml::Id.new(0xe0, 1)
      return @@id
    end
  end

  class VideoPixelWidth < Ebml::UInteger
    def VideoPixelWidth.global_id
      @@id ||= Ebml::Id.new(0xb0, 1)
      return @@id
    end
  end

  class VideoPixelHeight < Ebml::UInteger
    def VideoPixelHeight.global_id
      @@id ||= Ebml::Id.new(0xba, 1)
      return @@id
    end
  end

  class VideoPixelCropBottom < Ebml::UInteger
    def VideoPixelCropBottom.global_id
      @@id ||= Ebml::Id.new(0x54aa, 2)
      return @@id
    end
  end

  class VideoPixelCropTop < Ebml::UInteger
    def VideoPixelCropTop.global_id
      @@id ||= Ebml::Id.new(0x54bb, 2)
      return @@id
    end
  end

  class VideoPixelCropLeft < Ebml::UInteger
    def VideoPixelCropLeft.global_id
      @@id ||= Ebml::Id.new(0x54cc, 2)
      return @@id
    end
  end

  class VideoPixelCropRight < Ebml::UInteger
    def VideoPixelCropRight.global_id
      @@id ||= Ebml::Id.new(0x54dd, 2)
      return @@id
    end
  end

  class VideoDisplayWidth < Ebml::UInteger
    def VideoDisplayWidth.global_id
      @@id ||= Ebml::Id.new(0x54b0, 2)
      return @@id
    end
  end

  class VideoDisplayHeight < Ebml::UInteger
    def VideoDisplayHeight.global_id
      @@id ||= Ebml::Id.new(0x54ba, 2)
      return @@id
    end
  end

  class VideoColourSpace < Ebml::Binary
    def VideoColourSpace.global_id
      @@id ||= Ebml::Id.new(0x2eb524, 3)
      return @@id
    end
  end

  class VideoFrameRate < Ebml::Float
    def VideoFrameRate.global_id
      @@id ||= Ebml::Id.new(0x2383e3, 3)
      return @@id
    end
  end

  class VideoFlagInterlaced < Ebml::UInteger
    def VideoFlagInterlaced.global_id
      @@id ||= Ebml::Id.new(0x9a, 1)
      return @@id
    end
  end

  class VideoStereoMode < Ebml::UInteger
    def VideoStereoMode.global_id
      @@id ||= Ebml::Id.new(0x53b9, 2)
      return @@id
    end
  end

  class VideoDisplayUnit < Ebml::UInteger
    def VideoDisplayUnit.global_id
      @@id ||= Ebml::Id.new(0x54b2, 2)
      return @@id
    end
  end

  class VideoAspectRatio < Ebml::UInteger
    def VideoAspectRatio.global_id
      @@id ||= Ebml::Id.new(0x54b3, 1)
      return @@id
    end
  end

  class VideoGamma < Ebml::Float
    def VideoGamma.global_id
      @@id ||= Ebml::Id.new(0x2fb523, 3)
      return @@id
    end
  end

end
